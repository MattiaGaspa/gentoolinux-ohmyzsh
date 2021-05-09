# gentoo-ohmyzsh
This plugin adds some aliases and functions to work with Gentoo Linux

## Features
#### EMERGE
 
| Alias    | Command                            | Description                                                         |
|----------|------------------------------------|---------------------------------------------------------------------|
| install  | sudo emerge <atom>                 | Install the <atom> packet in the system                             |
| lbin     | sudo emerge -K <atom>              | Install the <atom> packet using a local binary                      |
| rbin     | sudo emerge -G <atom>              | Install the <atom> packet using a remote binary                     |
| remove   | sudo emerge -C <atom>              | Uninstall the <atom> packet in the system                           |
| search   | emerge -s <atom>                   | Search the <atom> packet in the local repository                    |
| sync     | sudo emerge --sync                 | Sync the local repository with the remote repository                |
| upgrade  | sudo emerge -aDuN world            | Update the packages in the local system                             |
| clean    | sudo emerge --depclean             | Delete the unwanted software                                        |
#### GENLOP

| Alias    | Command                            | Description                                                         |
|----------|------------------------------------|---------------------------------------------------------------------|
| ghistory | sudo genlop -l                     | Show full merge history                                             |
| eta      | sudo genlop -c                     | Display the currently compiling packages (if any)                   |
| weta     | watch -ct -n 1 sudo genlop -c      | Display the currently compiling packages (if any), with refresh     |
| ginfo    | sudo genlop -i <atom>              | Extra infos for the selected <atom> (build specific USE, CFLAGS)    |
| guhistory| sudo genlop -u                     | Show when packages have been unmerged                               |
| estimate | sudo genlop -t <atom>              | Calculate merge time for the specific <atom(s)>                     |
#### QLOP

| Alias    | Command                            | Description                                                         |
|----------|------------------------------------|---------------------------------------------------------------------|
| summary  | sudo qlop -c                       | Print summary of average merges                                     |
| time     | sudo qlop -t                       | Print time taken to complete action                                 |
| average  | sudo qlop -a                       | Print average time taken to complete action                         |
| human    | sudo qlop -H                       | Print elapsed time in human readable format                         |
| machine  | sudo genlop -M                     | Print start/elapsed time as seconds with no formatting              |
| qmhistory| sudo qlop -m                       | Show merge history                                                  |
| quhistory| sudo qlop -u                       | Show unmerge history                                                |
| qahistory| sudo qlop -U                       | Show autoclean unmerge history                                      |
| qshistory| sudo qlop -s                       | Show sync histroy                                                   |
| endtime  | sudo qlop -e                       | Report time at which the operation finished (iso started)           |
| running  | sudo qlop -r                       | Show current emerging packages                                      |
#### ECLEAN
 
| Alias    | Command                            | Description                                                         |
|----------|------------------------------------|---------------------------------------------------------------------|
| cleandist| sudo eclean --deep distfiles       | Clean files from /usr/portage/distfiles                             |
| cleanpkg | sudo eclean-pkg                    | Clean  files from /usr/portage/packages                             |
#### EUSE

Of course you need to install the [gentoolkit](https://packages.gentoo.org/packages/app-portage/gentoolkit) packet.

| Alias    | Command                            | Description                                                         |
|----------|------------------------------------|---------------------------------------------------------------------|
| nuse     | sudo euse -E <use>                 | Add th <use> flag in /etc/portage/make.conf                         |
| duse     | sudo euse -D <use>                 | Delete th <use> flag in /etc/portage/make.conf                      |
#### EUSE

| Alias    | Command                            | Description                                                         |
|----------|------------------------------------|---------------------------------------------------------------------|
| make     | sudo vim /etc/portage/make.conf    | Open the make.conf configuration file                               |
| mask     | sudo vim /etc/portage/package.mask | Open the package.mask configuration file                            |
| use      | sudo vim /etc/portage/package.use  | Open the package.use configuration file                             |
| repos    | sudo vim /etc/portage/repos.conf   | Open the repos.conf configuration file                              |
## Installation
You need to install the [ohmyzsh framework](https://github.com/ohmyzsh/ohmyzsh) with:
```shell
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```
Next, you have to clone this plugin in ~/.oh-my-zsh/custom/plugins/gentoo:
```shell
git clone https://github.com/MattiaG-afk/gentoo-ohmyzsh.git ${ZSG_CUSTOM:-~/.oh-my-zsh/custom}/plugins/gentoo
```
Finally, open .zshrc and enable the plugins by adding 'gentoo' in 'plugins=(...)':
```shell
...other stuff here...
plugins=(git gentoo)
...other stuff here...
```
If you don't have genlop installed you will need to install it with the command:
```shell
sudo emerge genlop
```
Now restart your terminal, or run:
```shell
source ~/.zshrc
```
