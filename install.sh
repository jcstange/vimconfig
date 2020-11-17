#!/usr/bin/env zsh

if [[ -d ~/.vim/bundle/Vundle.vim ]] 
then 
	echo "Vundle is already cloned"
else 
	echo "Cloning Vundle"
	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi
echo "Replacing .vimrc"
cp .vimrc ~/.vimrc
vim +PluginInstall +qall
echo "Done"
echo "Enjoy your new vim"
