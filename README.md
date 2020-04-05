# Playbook to deploy Fedora 32 (pre-release) on a Raspberry Pi 4 using the boot partition and kernel from Rasbian. 

Set your parameters in the inventory, then run:
Three roles need to be performed - the system you run the playbook from, a system where the images get assembled, and a system where the product hits an SD card. These can be the same machine but don't have to be. 

To use, on the basae machine:
Step 1:
dnf -y install ansible git 

Step 2: edit the inventory file with the settings you want. 

Step 3: Run:
cd armbuild
ansible-playbook -i inventory deploy.yml

Add -vvv for gore. 

A writeup of how to use this can be found here:

https://medium.com/@mikishapiro/installing-64-bit-fedora-on-the-raspberry-pi-4-d4a665ea65d3

There's a known issue where if there already is an LVM volume group on your machine named "fedora", the downloaded aarch64 Fedora image won't get properly mounted by the playbook. 


