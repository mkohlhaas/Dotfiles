Install Hunspell language packs:
```shell
sudo xbps-install hunspell-de_DE hunspell-en_US
cp /usr/share/hunspell/* ~/.config/nvim/spell/
```

In Vim:
```shell
:mkspell en en_US
:mkspell de de_DE
```
