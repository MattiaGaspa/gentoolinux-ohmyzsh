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
| search   | emerge --s <atom>                  | Search the <atom> packet in the local repository                    |
| sync     | sudo emerge --sync                 | Sync the local repository with the remote repository                |
| upgrade  | sudo emerge -aDuN world            | Update the packages in the local system                             |
| clean    | sudo emerge --depclean             | Delete the unwanted software                                        |
#### ECLEAN
 
| Alias    | Command                            | Description                                                         |
|----------|------------------------------------|---------------------------------------------------------------------|
| cleandist| sudo eclean --deep distfiles       | Clean files from /usr/portage/distfiles                             |
| cleanpkg | sudo eclean-pkg                    | Clean  files from /usr/portage/packages                             |
#### EUSE
 
| Alias    | Command                            | Description                                                         |
|----------|------------------------------------|---------------------------------------------------------------------|
| nuse     | sudo euse -E <use>                 | Add th <use> flag in /etc/portage/make.conf                         |
| duse     | sudo euse -D <use>                 | Delete th <use> flag in /etc/portage/make.conf                      |
