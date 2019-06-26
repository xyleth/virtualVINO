# virtualVINO

A vagrant setup for building Intel's OpenVINO toolkit

## Tested with

- VirtualBox 6.0.8
- Vargrant 2.2.4
- Parallels 14 Pro
- Hyper-V (Windows 10 Pro)
- Intel OpenVINO toolkit version 2019.1.144

## Vagrant setup

You need to have Vagrant installed with a provider for your hypervisor of choice.  Virtualbox is included by default, others have to be added as per the instructions for that hypervisor.

If using virtualbox you should also install the vagrant-vbguest plugin:
'vagrant plugin install vagrant-vbguest'

## OpenVNIO toolkit

You will also need to download and install the Intel openVINO toolkit from Intel's website.  This package is developed with the 2019.1.144 version, other versions may work but have not been tested.  Once you have downloaded the archive place it in the resources subdirectory of this folder.

## Ready to go

Once you have completed the above steps open your favorite terminal, cd into this directory and issue the following command:
'vagrant up'
Then go and get a coffee, this process will take a while - typically 15/20 minutes on first build with a decent internet connection.

