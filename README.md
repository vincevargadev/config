# `.config`

## Initial setup

Clone this repository into `~/.config`:

```
cd && git clone https://github.com/vincevargadev/config.git && mv config .config
```

Install brew https://brew.sh/

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

