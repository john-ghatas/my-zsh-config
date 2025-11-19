# My ZSH Setup with oh-my-posh

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

# Optional themes
If you want to swap the theme used in your shell - have a look at the [list](https://ohmyposh.dev/docs/themes) of available themes that come with the oh-my-posh installation. Pick your next theme and adjust the .zshrc accordingly!

For example for the **Alien** theme you need to make the following change
```
vim ~/.zshrc

[...] # Look for this block
#### ─────────────────────────────────────────────
#### OH-MY-POSH
#### ─────────────────────────────────────────────

eval "$(oh-my-posh init zsh --config "$HOME/.cache/oh-my-posh/themes/blue-owl.omp.json")"

[...]
#### ─────────────────────────────────────────────
#### OH-MY-POSH
#### ─────────────────────────────────────────────

eval "$(oh-my-posh init zsh --config "$HOME/.cache/oh-my-posh/themes/atomic.omp.json")"

```
