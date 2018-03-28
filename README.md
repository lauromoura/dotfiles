
# Dotfiles

Ease the transition from one box/computer to another.

Currently just git and nvim info. Didn't fiddle with fish configuration to justify storing it.

* `pull_changes.sh` Updates the repo with the info from the current used files.
* `push_changes.sh` Copies the files from the repo to the system.
* `install_essentials_ubuntu.sh` Installs fish, neovim and configure them.

# Other toolbox stuff

## Arch Linux guest on VirtualBox

* Wiki [page](https://wiki.archlinux.org/index.php/VirtualBox#Install_the_Guest_Additions)
* Downloaded from [OSBoxes](https://www.osboxes.org/arch-linux/#arch-linux-201708-info)
* Generally running from an Ubuntu host (currently 16.04)
* Keyboard (abnt2): add `KEYMAP=br-abnt2` to `/etc/vconsole.conf`
* Install vbox guests: `pacman -S virtualbox-guest-utils-nox` (Default kernel, choose `virtualbox-guest-modules-arch` provider)
* SSH port forwarding (3022 on host, 22 on guest): With the vm stopped, run on the host `VBoxManage modifyvm <vm name> --natpf1 "ssh,tcp,,3022,,22"`
* When building EFL's csharp bindings, mono may complain about bad magic number, due to a [ncurses-related bug](https://github.com/mono/mono/issues/6752),
  due to be fixed in mono 5.12. Until them, use `TERM=xterm`.

