# gentoo-ohmyzsh
This plugin adds some aliases and functions to work with Gentoo Linux

## Features
#### EMERGE
 
| Alias    | Command                            | Description                                                         |
|----------|------------------------------------|---------------------------------------------------------------------|
| sync     | sudo emerge --sync                 | Sync the local repository with the remote repository                |
| upgrade  | sudo emerge -aDuN world            | Update the packages in the local system                             |
| clean    | sudo emerge --depclean             | Delete the unwanted software                                        |
#### ECLEAN
 
| Alias    | Command                            | Description                                                         |
|----------|------------------------------------|---------------------------------------------------------------------|
| cleandist| sudo eclean --deep distfiles       | Clean files from /usr/portage/distfiles                             |
| cleanpkg | sudo eclean-pkg                    | Clean  files from /usr/portage/packages                             |
