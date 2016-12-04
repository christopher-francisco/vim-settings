# vim-settings
Vim settings bassed on Jeffrey's Way "Vim Mastery" series on Laracasts.

### Pre requisites
 * iTerm2
 * MacVim
 * CTags `$ brew install ctags`
 * The Silver Searcher `$ brew install the_silver_searcher`

### Installation

Install Vundle

```
$ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

Create links to your home directory running the following commands:

```
$ ln -s ~/code/vim/vim-settings/.vim ~/.vim
$ ln -s ~/code/vim/vim-settings/.vimrc ~/.vimrc
$ ln -s ~/code/vim/vim-settings/.gvimrc ~/.gvimrc
$ ln -s ~/code/vim/vim-settings/.zshrc.aliases ~/.zshrc.aliases
```

Open `MacVim` and run `:PluginInstall`

### Side notes
Inside your project root directory, run `ctags -R` to create the `tag` file. You might want to add it to your `.gitignore`. 
Run `ctags -R` on several ocations (like everytime you create a file, or push a commit, as a git hook).

### Troubleshooting
##### CTags
If the following error appears ([read source](https://gist.github.com/nazgob/1570678)):

```
$ ctags -R --exclude=.git --exclude=log *
ctags: illegal option -- R
usage: ctags [-BFadtuwvx] [-f tagsfile] file ...
```

Make sure you have the lastest CTags through homebrew, and also add this line to your alias:

```
$ alias ctags="`brew --prefix`/bin/ctags"
```
