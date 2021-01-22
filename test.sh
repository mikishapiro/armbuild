#!/bin/bash
sed -i 's@fedora_url=.*@fedora_url=https://download.fedoraproject.org/pub/fedora/linux/releases/33/Server/aarch64/images/Fedora-Server-33-1.3.aarch64.raw.xz@' ./inventory
sed -i 's@fedora_image_checksum=.*@fedora_image_checksum=https://mirror.aarnet.edu.au/pub/fedora/linux/releases/33/Server/aarch64/images/Fedora-Server-33-1.3-aarch64-CHECKSUM@' ./inventory
time ansible-playbook -i inventory ./deploy.yml || exit 133
time ansible-playbook -i inventory ./deploy.yml || exit 233
sed -i 's@fedora_url=.*@fedora_url=https://mirror.aarnet.edu.au/pub/fedora/linux/releases/32/Server/aarch64/images/Fedora-Server-32-1.6.aarch64.raw.xz@' ./inventory
sed -i 's@fedora_image_checksum=.*@fedora_image_checksum=https://mirror.aarnet.edu.au/pub/fedora/linux/releases/32/Server/aarch64/images/Fedora-Server-32-1.6-aarch64-CHECKSUM@' ./inventory
time ansible-playbook -i inventory ./deploy.yml || exit 132
time ansible-playbook -i inventory ./deploy.yml || exit 232
