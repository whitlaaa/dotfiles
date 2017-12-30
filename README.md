# dotfiles

Personal dotfiles setup largely taken from a combination of other setups at [dotfiles.github.io](https://dotfiles.github.io), particularly  the awesome minimal setup provided by [driesvints](https://github.com/driesvints/dotfiles).

While this specifically targets a Mac setup, it does at least provide a reference point should I need to restore a non-Mac device.

## A Fresh macOS Setup

### Before you re-install

First, go through the checklist below to make sure you didn't forget anything before you wipe your hard drive.

- Did you commit and push any changes/branches to your git repositories?
- Did you not forget any important documents in non-iCloud directories?
- Did you save all of your work in apps which aren't synced through iCloud?
- Did you not forget to export important data from your local database?
- Did you update [mackup](https://github.com/lra/mackup) to the latest version and ran `mackup backup`?

### Installing macOS cleanly

After going to our checklist above and making sure you backed everything up, we're going to cleanly install macOS with the latest release. Follow [this article](https://www.imore.com/how-do-clean-install-macos) to cleanly install the latest macOS.

### Setting up your Mac

If you did all this you may now follow these install instructions to setup a new Mac.

1. Update macOS to the latest version with the App Store
1. Install Xcode from the App Store, open it and accept the license agreement
1. Install macOS Command Line Tools by running `xcode-select --install`
1. Copy public and private SSH keys to `~/.ssh` and make sure they're set to `600`
1. Clone this repo to `~/.dotfiles`
1. Append `/usr/local/bin/zsh` to the end of your `/etc/shells` file
1. Run `install.sh` to start the installation
1. Restore preferences by running `mackup restore`
1. Restart your computer to finalize the process

Your Mac is now ready to use!

> Note: you can use a different location than `~/.dotfiles` if you want. Just make sure you also update the reference in the `.zshrc` file.

## VS Code

All Visual Studio Code settings, keybindings, and extensions are synced via the [Setting Sync Extension](https://marketplace.visualstudio.com/items?itemName=Shan.code-settings-sync). This [gist](https://gist.github.com/whitlaaa/edd824ee2034ed08b5f79d5506af11ac) holds the synced settings.

I chose syncing via the extension instead of [Mackup](https://github.com/lra/mackup/) since it also syncs installed extensions, which Mackup doesn't take care of.
