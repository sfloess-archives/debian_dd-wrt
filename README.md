# Running Debian on DD-WRT
My chroot setup for running Debian on DD-WRT

## Requirements
* Debian arm image

## Environment
I currently have Debian 9.8 armel image running on the following hardware:
* [Buffalo AC-1750-DHP](https://www.amazon.com/Buffalo-AirStation-Extreme-Wireless-WZR-1750DHP/dp/B00D69747O)
* [Linksys EA6300](https://www.linksys.com/us/support-product?pid=01t80000003KTikAAG)

## Startup
To run at startup:
* Choose services:
** USB
** Core USB Support - Enable
** USB Storage Support - Enable
** Automatic Drive Mount - Enable
** Run-on-mount Script Name - /tmp/mnt/[partition]/[debian directory]/[directory where project files stored]/flossware.sh.  As an example:  /tmp/mnt/sda1/debian_armel/flossware/flossware.sh