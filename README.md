# My ZSH Setup with Powerlevel10k (Set default to Powerlevel9k)

To run this script to copy the config make sure you have zsh installed!

Run the script: `./installreqs.sh`

#### If you have ZSH already installed please backup your .zshrc before you run the script

Set ZSH as your default shell:

`chsh -s $(which zsh)`

# Standard theme

To render the theme correctly set a Powerline patched font as your terminals font or as your IDE font. Enjoy!

# Extra p10k options

The theme is set to powerlevel9k by default. To enable p10k look for this line;

`ZSH_THEME="powerlevel10k/powerlevel9k"`

Comment this line and uncomment the following line below it:
`#ZSH_THEME="powerlevel10k/powerlevel10k"`

After that run `p10k configure` to set your p10k appearance

## Screenshot of the current configuration

![Example](https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fbhilburn.org%2Fcontent%2Fimages%2F2014%2F12%2Fpowerlevel9k.png&f=1&nofb=1)
