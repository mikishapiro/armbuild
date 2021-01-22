# Playbook to deploy Fedora 32 or higher on a Raspberry Pi 4 using the boot partition and kernel from Raspbian. 

First, prepare your systems. Three "roles" ("roles" in the generic sense of the word in English, not "Ansible Roles") need to be performed - 
* A system that you run the playbook from
* A system where the images get assembled
* A system where the product hits an SD card.

These can be the same machine but don't have to be. 

Clone this git repository onto the base system.

Then, on the base machine:

# Step 1:

```bash
dnf -y install ansible git 
```

# Step 2: 
edit the inventory file with the settings you want. 

# Step 3: 
Run:

```bash
cd armbuild

ansible-playbook -i inventory deploy.yml
```

Add -vvv for gore. 

A writeup of how to use this can be found here:

https://medium.com/ironhaul/installing-64-bit-fedora-on-the-raspberry-pi-4-d4a665ea65d3

There's a known issue where if there already is an LVM volume group on your machine named "fedora", the downloaded aarch64 Fedora image won't get properly mounted by the playbook. 

If you need a kernel different from the default Raspbian one, refer:

https://medium.com/ironhaul/compiling-a-custom-kernel-on-fedora-on-raspberry-pi-9e199731220b
