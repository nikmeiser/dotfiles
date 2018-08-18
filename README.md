# Nikhil's dotfiles
## Refrences
* [VIM and Python - A Match Made in Heaven](rp1)
* [You Complete Me - Installation Guide](ycm1)

## VIM Config
* Copy the vimrc to `~/.vimrc`
* Then go into vim and run `:PluginInstall`
* Then go to your terminal and compile ycm and regex
```sh
cd ~
mkdir ycm_build
cd ycm_build
cmake -G "Unix Makefiles" . ~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp
cmake --build . --target ycm_core
cd ..

mkdir regex_build
cd regex_build
cmake -G "Unix Makefiles" . ~/.vim/bundle/YouCompleteMe/third_party/ycmd/third_party/cregex
cmake --build . --target _regex
```
* My pip config enforces Python virtual environments so YCM will not work without a Python executable specified

[rp1]: https://realpython.com/vim-and-python-a-match-made-in-heaven/
[ycm1]: https://github.com/Valloric/YouCompleteMe#full-installation-guide
