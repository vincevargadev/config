# `.config`

## Initial setup

Clone this repository into `~/.config`:

```
cd && git clone https://github.com/vincevargadev/config.git && mv config .config
```

Install brew https://brew.sh/ Install ohmy https://ohmyz.sh/#install

Restore your Brewfile

```
cd ~/.config/brew && brew bundle
```

Add this line to your `.zshrc` file

```
source ~/.config/rc/main.sh
```

After this, run `source ~/.zshrc` to load the changes.

Now, all aliases, etc should be available for you.

