#!/bin/bash

sudo apt update;
sudo apt full-upgrade -y;

sudo apt install gum -y;

if gum confirm "Do you want to install qemu-guest-agent?"; then
  sudo apt install qemu-guest-agent -y;
  sudo systemctl enable qemu-guest-agent;
  echo "QEMU guest agent installed & enabled (system service - not started)."
else
  echo "OK.";
fi

sudo apt install spice-vdagent -y;
systemctl --user enable --now spice-vdagent.service;
echo "spice-vdagent.service installed & enabled (user service)."
