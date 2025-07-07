# Copy dotfiles to your $HOME directory:
rsync -a /usr/share/i3-dotfiles/etc/skel/ "$HOME"/

# Copy dotfiles to /etc/skel/:
rsync -a /usr/share/i3-dotfiles/etc/skel/ /etc/skel/

# Copy dotfiles to /root/:
rsync -a /usr/share/i3-dotfiles/etc/skel/ /root/

# Copy scripts to /usr/bin/:
rsync -a /usr/share/i3-dotfiles/usr/bin/ /usr/bin/

