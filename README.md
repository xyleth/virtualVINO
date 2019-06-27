# virtualVINO

A vagrant setup for building Intel's OpenVINO toolkit

## Tested with

- Vargrant 2.2.4
- Virtualbox 6.0.8 (Windows 10 Pro)
- Parallels 14 Pro (Mac OSX)
- Intel OpenVINO toolkit version 2019.1.144

## Vagrant setup

You need to have Vagrant installed with a provider for your hypervisor of choice.  Virtualbox is included by default, others have to be added as per the instructions for that hypervisor.

For parallels you add the provider with `vagrant plugin install vagrant-parallels`

Before the first run:
- copy the `config.example` file to `config.yaml` 
- edit the resulting `config.yaml` file 
- make sure that the correct `provider:` line is uncommented for your hypervisor.

You can also edit how many vCPUs and how much memory is allocated to the VM using the relevant lines in `config.yaml`.

## OpenVNIO toolkit

You will also need to download and install the Intel openVINO toolkit from Intel's website.  This package is developed with the 2019.1.144 version, other versions may work but have not been tested.  Once you have downloaded the archive place it in the resources subdirectory of this folder.

## Known issue

Due to the way git handles line endings by default there is an issue with two of the files being changed from LF to CRLF which causes issues within the VM.  To fix you need to change the endings of resources/startwm.sh and resources/silent_install.txt from CRLF back to LF.  Visual Studio Code is good for this.  **This should be done before the first vagrant up**

## Ready to go

Once you have completed the above steps open your favorite terminal, cd into this directory and issue the following command:
`vagrant up`
Then go and get a coffee, this process will take a while - typically 15/20 minutes on first build with a decent internet connection.

## Testing

Once the machine is built you can connect to it with the standard `vagrant ssh` in most cases.  Or you can connect to the Mate GUI by establishing a RDP session to the VM over port 8389 (typically to 127.0.0.1:8389).  The username is `vagrant` and the password is also `vagrant` out of the box.  Once you have a terminal on the VM run the following commands:

`cd /opt/intel/openvino/deployment_tools/demo`

`./demo_squeezenet_download_convert_run.sh`

and

`./demo_security_barrier_camera.sh`

noting that the security barrier demo will only run over an RDP session in the Mate desktop.  The first demo will run on a text console via SSH and is useful for inital testing.

