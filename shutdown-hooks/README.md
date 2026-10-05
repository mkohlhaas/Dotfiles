```shell
sudo stow -d "$HOME/.dotfiles" -t / shutdown-hooks
sudo systemctl enable on-shutdown.service
```
