### Prerequisites

#### Filen CLI

```shell
yay -S filen-cli
```

#### Environment Vars for Filen

```shell
# filen-cli help auth
echo -e 'FILEN_EMAIL="your-email@example.com"\nFILEN_PASSWORD="your-password"' > ~/.filen.env
chmod 600 ~/.filen.env
```

### Setup Runtime Folder

```shell
sudo mkdir -p /var/lib/gitea/backups
sudo chown -R gitea:gitea /var/lib/gitea/backups
sudo chmod 770 /var/lib/gitea/backups
```

### Installation

```shell
sudo stow -d ~/.dotfiles -t / gitea-backup
```

### Start Timer Service

```shell
sudo systemctl enable --now gitea-backup.timer
sudo systemctl list-timers
```

### Testing

```shell
sudo usermod -aG gitea schmidh
sudo systemctl start gitea-backup.service
journalctl -u gitea-backup.service --no-pager
filen-cli list /Backups/Gitea

# Test the Failure Script
sudo systemctl start gitea-backup-failed@gitea-backup.service
```


### View the Next Scheduled Run Time

To confirm exactly when your backup will fire next and see a countdown timer, use the list-timers utility:

```shell
systemctl list-timers --all | grep gitea-backup
```


### Check the Live Service Status

To verify if the system is currently idling safely, actively backing up, or if it encountered an error during its last run, check the unit status:

```shell
systemctl status gitea-backup.service
```


### Read the Execution History & Logs

Since systemd captures all terminal outputs (stdout and stderr) automatically, you can audit your script's execution history using the journal reader.

```shell
# View the full history of the backup service:
journalctl -u gitea-backup.service --no-pager
```


```shell
# Follow the logs in real-time (useful when testing manually):
journalctl -u gitea-backup.service -f
```


```shell
# Show only the logs from today's run:
journalctl -u gitea-backup.service --since today
```


### On-Screen Monitor Alias
shell profile configuration: ~/.bashrc

```shell
alias check-gitea-backup="echo '=== SCHEDULE ===' && systemctl list-timers --all | grep gitea-backup && echo '=== RECENT LOGS ===' && journalctl -u gitea-backup.service -n 15 --no-pager"
```
