# Python Developer Environment Setup

## What this includes

Just a few of my favorite open-source developer tools for a fancier and more user-friendly terminal

+ [Homebrew](https://brew.sh/), a package manager for Mac OSX
+ [pyenv](https://github.com/pyenv/pyenv), a python version manager
+ [Powerlevel10k](https://github.com/romkatv/powerlevel10k), a wicked fancy zsh theme that will make you feel like Mr. Robot

## You should also download

+ either [Atom](https://atom.io/) or [VSCode](https://code.visualstudio.com/), the two best text editors out ther
+ [GitKraken](https://www.gitkraken.com/) if you're not yet comfortable using the git CLI and you don't want to use the built-in git plugins for Atom or VSCode

## Actual Setup Instructions

1. Download [iTerm2](https://iterm2.com/index.html), a cross-platform, open-source terminal app (it's better than the preinstalls mac terminal app)
2. Clone this repo with `git clone https://github.com/code-starved-beast/python-dev-setup.git`
3. `sh python-dev-setup/setup_env.sh`
4. Use `pyenv` to set the python version you want globally. Check which version you have version with `python --version`. If it's the right version, you can  feel free to skip this step. Otherwise,
  + `pyenv install --list` to see all available python versions to install
  + `pyenv install 3.8.3` (replace 3.8.3 with whatever version you want if different)
  + `pyenv global 3.8.3` to set the version used globally
    + if you want to use a specific version in a particular directory, `pyenv local [some-python-version]`. This will create a hidden file `.python-version` containing the python version you want to use for that directory
  + to list all pyenv commands, just do `pyenv` or `pyenv --help`
  + to list what versions of python you have installed and show the currently set version,`pyenv versions`
5. `cd && p10k configure` and follow the onscreen wizard
6. Enjoy your beautiful new terminal!

## The UNIX Command Line Interface

"That's cool, but what is all this? What did I just do?" you're probably thinking right now.

You're using the UNIX shell's command line interface (or CLI) to interact directly with your files and folders (or "directories") rather than the typical user interface where you drag and drop file and folder icons around.

Every directory can contain files or other directories, plus `.`, which points to the current working directory you're in, and `..`, which points to the parent directory.

A valid CLI expression consists of a command followed by a set of arguments, which can be files, folders, or special flags specific to that command. To view instructions on how to use a particular command, do `man [some-command]`

Here are some important commands you should know:
+ `ls`, used to list the contents of a directory
  + hidden files and directories are prefixed with `.`; to display these as well, use `ls -a`
  + `ls` on its own will list the contents of the current working directory. You can also do `ls /path/to/some/other/directory` to list the contents of a diffent directory
+ `open -a "[application-name]" [file-to-open]`
  + e.g. `open -a Atom my_script.py`
+ `pwd`, which displays the full path from the root to the current working directory
+ `cd`, used to change directory
  + `cd ../some/other/directory` to go to the parent directory and then some other directory within the parent
  + `cd directory/in/this/directory` to go to a directory in this current directory
  + `cd /some/directory/from/root` to go into a directory with an absolute path (probably won't need to do this much)
+ `rm [path/to/file/to/delete]` to delete a file
  + `rm -rf [directory-to-delete]` to delete a directory and its contents
+ `mkdir [path/to/new/directory]` to create a new directory
+ `touch [path/to/new/file]` to create a new file
+ `which [some-command]` to show the absolute path to the executable being used for a particular command
+ (optional) `git`, a branch management tool

## Python Learning Resources

+ https://www.learnpython.org/
+ https://wiki.python.org/moin/BeginnersGuide
+ https://docs.python.org/3/tutorial/index.html
+ https://www.codecademy.com/catalog/language/python
+ https://medium.com/the-andela-way/idiomatic-python-coding-the-smart-way-cc560fa5f1d6
+ https://github.com/gregmalcolm/python_koans

Also, once you feel comfortable writing and using classes, I HIGHLY recommend you buy a copy of the book [Practical Object-Oriented Design in Ruby](https://www.poodr.com/) by Sandi Metz, which sounds super textbooky but is actually written in a fairly lighthearted and fun tone that won't put you to sleep. The examples are all written in Ruby, but if you know Python you'll be able to read and understand Ruby code without much trouble. The principles in this book apply to object-oriented programming in any language, not just Ruby. Knowing how to write [SOLID](https://en.wikipedia.org/wiki/SOLID) code will make you a vastly better programmer and make your life and the lives of everyone who has to read your code 100x easier.

## Some Open-Source Python Projects to Check Out

+ [Soundcloud Python](https://github.com/soundcloud/soundcloud-python), a [REST](https://en.wikipedia.org/wiki/Hypertext_Transfer_Protocol)ful client for SoundCloud's [API](https://developers.soundcloud.com/docs/api/guide)
+ [Python Twitter](https://github.com/bear/python-twitter), a RESTful client for Twitter's [API](https://developer.twitter.com/en)
+ [Django](https://github.com/django/django), an extremely popular server-side web framework
+ [TF Quant Finance](https://github.com/google/tf-quant-finance), a TensorFlow based Quant Finance Library
+ [TheAlgorithms](https://github.com/TheAlgorithms/Python), a set of example implementations of common algorithms
+ [Cura](https://github.com/Ultimaker/Cura), an open-source [slicer](https://en.wikipedia.org/wiki/Slicer_(3D_printing))
