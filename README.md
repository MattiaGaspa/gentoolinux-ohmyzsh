# Gentoo Linux plugin

This plugin adds some aliases and functions to work with Gentoo Linux.

## Features
### EMERGE
 
| Alias        | Command                              | Description                                                         |
|--------------|--------------------------------------|---------------------------------------------------------------------|
| emin         | `sudo emerge <atom>`                 | Install the <atom> packet in the system                             |
| eminsl       | `sudo emerge -K <atom>`              | Install the <atom> packet using a local binary                      |
| eminsr       | `sudo emerge -G <atom>`              | Install the <atom> packet using a remote binary                     |
| emre         | `sudo emerge -C <atom>`              | Uninstall the <atom> packet in the system                           |
| emsearch     | `emerge -s <atom>`                   | Search the <atom> packet in the local repository                    |
| emsync       | `sudo emerge --sync`                 | Sync the local repository with the remote repository                |
| emup         | `sudo emerge -aDuN world`            | Update the packages in the local system                             |
| emclean      | `sudo emerge --depclean`             | Delete the unwanted software                                        |
### EIX

| Alias        | Command                              | Description                                                         |
|--------------|--------------------------------------|---------------------------------------------------------------------|
| eisync       | `sudo eix-sync`                      | Update the local eix cache                                          |
| eirup        | `sudo eix-remote update`             | Update the remotes by saving locally layman caches                  |
| eirov        | `eix -R <overlay>`                   | Search all overlay                                                  |
### PORTAGEQ

| Alias        | Command                              | Description                                                         |
|--------------|--------------------------------------|---------------------------------------------------------------------|
| pocolor      | `portageq colormap `                 | Display the color.map as environment variables                      |
| podist       | `portageq distdir `                  | Returns the DISTDIR path                                            |
| povar        | `portageq envvar `                   | Returns a specific environment variable as exists prior to ebuild.sh|
| pomirror     | `portageq gentoo_mirrors`            | Returns the mirrors set to use in the portage configuration         |
| poorphan     | `portageq --orphaned `               | Match only orphaned (maintainer-needed) packages                    |
### GENLOP

| Alias        | Command                              | Description                                                         |
|--------------|--------------------------------------|---------------------------------------------------------------------|
| genstory     | `sudo genlop -l`                     | Show full merge history                                             |
| geneta       | `sudo genlop -c`                     | Display the currently compiling packages (if any)                   |
| genweta      | `watch -ct -n 1 sudo genlop -c`      | Display the currently compiling packages (if any), with refresh     |
| geninfo      | `sudo genlop -i <atom>`              | Extra infos for the selected <atom> (build specific USE, CFLAGS)    |
| genustory    | `sudo genlop -u`                     | Show when packages have been unmerged                               |
| genstorytime | `sudo genlop -t <atom>`              | Calculate merge time for the specific <atom(s)>                     |
### QLOP

| Alias        | Command                              | Description                                                         |
|--------------|--------------------------------------|---------------------------------------------------------------------|
| qsummary     | `sudo qlop -c`                       | Print summary of average merges                                     |
| qtime        | `sudo qlop -t`                       | Print time taken to complete action                                 |
| qavg         | `sudo qlop -a`                       | Print average time taken to complete action                         |
| qhum         | `sudo qlop -H`                       | Print elapsed time in human readable format                         |
| qmachine     | `sudo qlop -M`                       | Print start/elapsed time as seconds with no formatting              |
| qmstory      | `sudo qlop -m`                       | Show merge history                                                  |
| qustory      | `sudo qlop -u`                       | Show unmerge history                                                |
| qastory      | `sudo qlop -U`                       | Show autoclean unmerge history                                      |
| qsstory      | `sudo qlop -s`                       | Show sync histroy                                                   |
| qend         | `sudo qlop -e`                       | Report time at which the operation finished (iso started)           |
| qrun         | `sudo qlop -r`                       | Show current emerging packages                                      |
### ECLEAN
 
| Alias        | Command                              | Description                                                         |
|--------------|--------------------------------------|---------------------------------------------------------------------|
| distclean    | `sudo eclean --deep distfiles`       | Clean files from /usr/portage/distfiles                             |
| pkgclean     | `sudo eclean-pkg`                    | Clean  files from /usr/portage/packages                             |
### EUSE

| Alias        | Command                              | Description                                                         |
|--------------|--------------------------------------|---------------------------------------------------------------------|
| newuse       | `sudo euse -E <use>`                 | Add th <use> flag in /etc/portage/make.conf                         |
| deluse       | `sudo euse -D <use>`                 | Delete th <use> flag in /etc/portage/make.conf                      |
### VIM

| Alias        | Command                              | Description                                                         |
|--------------|--------------------------------------|---------------------------------------------------------------------|
| make.conf    | `sudo vim /etc/portage/make.conf`    | Open the make.conf configuration file                               |
| package.mask | `sudo vim /etc/portage/package.mask` | Open the package.mask configuration file                            |
| package.use  | `sudo vim /etc/portage/package.use`  | Open the package.use configuration file                             |
| repos.conf   | `sudo vim /etc/portage/repos.conf`   | Open the repos.conf configuration file                              |
| eix-sync.conf| `sudo vim /etc/eix-sync.conf`        | Open the /etc/eix-sync.conf configuration file                      |
| eixrc        | `sudo vim /etc/eixrc`                | Open the /etc/eixrc configuration file                              |
## Installation
You need to install the [ohmyzsh framework](https://github.com/ohmyzsh/ohmyzsh) with:
```shell
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```
Next, you have to clone this plugin in ~/.oh-my-zsh/custom/plugins/gentoolinux:
```shell
git clone https://github.com/MattiaG-afk/gentoolinux-ohmyzsh.git ${ZSG_CUSTOM:-~/.oh-my-zsh/custom}/plugins/gentoolinux
```
Finally, open .zshrc and enable the plugins by adding 'gentoo' in 'plugins=(...)':
```zsh
plugins=(... gentoolinux)
```
If you don't have [gentoolkit](https://packages.gentoo.org/packages/app-portage/gentoolkit) installed you will need to install it with the command:
```shell
sudo emerge genlop
```
If you don't have [eix](https://packages.gentoo.org/packages/app-portage/eix) installed you will need to install it with the command:
```shell
sudo emerge eix
```
Now restart your terminal, or run:
```shell
source ~/.zshrc
```
