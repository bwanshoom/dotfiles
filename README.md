# dotfiles

### Install zsh:
1. Install zsh and other utils:  
```
sudo apt-get install zsh curl git xsel
```

2. Install powerline font:

    #### For Linux:  
   `sudo apt-get install fonts-powerline`
    
    #### For Windows:  
    a. Go to https://github.com/powerline/fonts  
    b. Click "Clone or download"  
    c. Click "Download ZIP"  
    d. Extract fonts-master.zip  
    e. Open an Admin PowerShell session  
    f. Go to where fonts-master.zip was extracted and run  
    ` install.ps1`

3. Install oh-my-zsh  
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

4. Create symlinks to .bashrc & .zshrc:  
```
mv ~/.bashrc ~/.bashrc.bak
mv ~/.zshrc ~/.zshrc.bak
ln -s ~/dotfiles/shell/.bashrc ~/.bashrc
ln -s ~/dotfiles/shell/.zshrc ~/.zshrc
```

5. Install Plug-ins:  
```
sudo git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
sudo git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```

6. Configure git  
```
#  Set your username:
git config --global user.name "Brian Berry"
#  Set your email address:
git config --global user.email "brian.berry@nist.gov"
```

7. Edit ~/.gitconfig:  
```
[include]
    path = ~/dotfiles/git/.gitconfig_inc
```
