# My ZSH Setup with Powerlevel10k

To run this script to copy the config make sure you have zsh installed!

# Installation

To install the configuration with all the requirements run the following command: 

`./installreqs.sh`

## Recommended fonts
The font used for this config is a Nerd Font, the recommended Nerd Font to use is: 

[A patched MesloLGS font](https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf)

[A patched SauceCode Pro font](https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/SourceCodePro/Regular/complete/Sauce%20Code%20Pro%20Nerd%20Font%20Complete.ttf)

Feel free to use any other patched Nerd Font.

#### If you have ZSH already installed please backup your .zshrc before you run the script

Set ZSH as your default shell:

`chsh -s $(which zsh)`

# Standard theme

To render the theme correctly set a Powerline patched font as your terminals font or as your IDE font. Enjoy!

# Extra p10k options

The theme is set to powerlevel10k by default. To enable p9k look for this line;

`#ZSH_THEME="powerlevel10k/powerlevel9k"`

Uncomment this line and comment the following line below it:
`ZSH_THEME="powerlevel10k/powerlevel10k"`

Run `p10k configure` to reset your p10k appearance if you want to change your terminal appearance

## Screenshot of the current configuration

![Example](https://i.imgur.com/b6lnJyM.png)
