########## Variables

dir=~/dotfiles                    # dotfiles directory
olddir=~/dotfiles_old             # old dotfiles backup directory
files=".zshrc .zsh_alias .vimrc .vim"        # list of files/folders to symlink in homedir

##########

# create dotfiles_old in homedir
echo "Creating $olddir for backup of any existing dotfiles in ~"
mkdir -p $olddir
echo "...done"

# change to the dotfiles directory
echo "Changing to the $dir directory"
cd $dir
echo "...done"

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks 
for file in $files; do
    echo "Moving any existing dotfiles from ~ to $olddir"
    mv ~/$file $olddir
    echo "Creating symlink to $file in home directory."
    cp $dir/$file ~/$file
done

# install vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
echo "Changing shell to zsh"
chsh -s /usr/bin/zsh
zsh
echo "Pacman: Installing firefox chromium nodejs mongodb git powerline ibus-unikey"
sudo acman -S firefox chromium nodejs mongodb git powerline ibus-unikey
echo "Yaourt: Installing robomongo insomnia gitkraken visual-studio-code"
yaourt -S robomongo insomnia gitkraken visual-studio-code
