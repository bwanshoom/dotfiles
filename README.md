# dotfiles

Install zsh:
1. Install zsh:

`sudo apt-get install zsh curl git`

2. Install powerline font:

`sudo apt-get install fonts-powerline`

3. Install oh-my-zsh

`sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"`

4. Edit .gitconfig:

`[include]`

`path = ~/dotfiles/git/.gitconfig_inc`
