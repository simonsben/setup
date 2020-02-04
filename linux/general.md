# Linux

## Permissions

### File/folder permissions

* Change file permissions
  * To give permissions to the current user use `chmod u+MOD filename`
  * Useful modifiers are w, r, x for write, read, and execute, respectively


## Setup

### Headless setup

To perform a headless setup with linux, after flashing the installation disk, add the following files to the image

* `ssh`
	* Adding this file enables sshd (ssh server)
* `wpa_supplicant.conf`
	* Adding this with Wi-Fi credentials allows the device to auto-connect to a wireless network

