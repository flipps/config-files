# My Linux basic configuration files

This repository stores all of my configuration files, for now just alacritty, tmux and nvim's.

The idea is to emulate the home directory paths inside of our repository folder, **that should be living inside of our home directory** `~/`, and then use [Stow](https://www.gnu.org/software/stow/manual/stow.html#Introduction) to create symlinks for us so we can just clone the repo and run `stow */`. If you are at a Ubuntu based distro you can install Stow running:

`sudo apt install stow`

This is an example of how a configuration file that lives in `~/.config` would look like inside of our repo:

![Screenshot from 2021-06-23 23-52-05](https://user-images.githubusercontent.com/6631805/123196193-dedea380-d47f-11eb-98d9-68063b967b5a.png)

As you can see we just emulated the home directory file path inside of our folder:

`~/config-files/alacritty/.config/alacritty/alacritty.yml`.

For files that you want to keep at your home folder you should do the same:

`~/config-files/tmux/tmux` for example.
