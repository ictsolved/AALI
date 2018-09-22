# AALI - Automated Arch Linux Installer (Shell Script)
For the Linux Distros like Ubuntu, Linux Mint, Kali Linux, CentOS, etc. you can start the installation and can have a walk for 15 minutes to breathe in the fresh air. Do you wonder the same while installing Arch Linux? Oh no, Arch Linux wants you so badly that you even can't think of leaving her for a moment. She needs your continuous input. Don't you realize how much is she addicted to you? This time why don't you let her give you space to meditate. She will do her job well without your presence. But How? Let's explore. I've created an automated Arch Linux installation script that covers pre-installation as well as post-installation. It is most useful if the system breaks and needs to be re-installed because disk partitioning section is not included here.

# Warning
Letting her play with herself is not a bad idea if you prepared her well. Do not run these scripts unless you have read this whole post carefully and modified the scripts accordingly for you. I am not responsible for any damage or data loss caused to you due to your negligence. You should have knowledge of what each command is doing and how to modify that command in your case. The commands that must be modified to prevent the data loss are marked as "modification required".

If root, home and swap partitions do not exist in your disk, they need to be created before this script is executed. You can use tools like fdisk, gdisk, parted or pseudo-graphics tool like cfdisk to create or modify the partitions. It is optimized for my Intel PC with UEFI boot mode along with separate home partition but will work on other PCs with different specs once you go through the script thoroughly and make the required changes as per your specifications and requirements.

The best approach is to fork [this repo](https://github.com/ictsolved/AALI) and push your changes as per the specifications and requirements. This way the changes will be persistent and will be optimized for your PC. Afterward, whenever you need the installation of Arch on your PC, you can download your own version of this script and execute that without any hassle.

My repo contains the packages that I use and are listed below. You may obviously want to use different desktop environment or a windows manager or you may not need the packages I use. Don't worry, you can simply remove the packages you don't want and add your own packages in the list. I have provided comments on every package so that you can know what each package is doing.


Enough gossip! Now let's dive into the process. I'll take reference of my repo while showing you the examples below. Assuming you have already prepared an installation media and currently booted into it, you can follow these steps:

# Step: 1

Connect to the internet through LAN or Wi-Fi. To get connected through Wi-Fi, type following command:

	$ wifi-menu

Select the network from the list, provide required credentials and get connected.

After internet connection is successfully established, issue the following commands to download Automated Arch Linux Installer (will be denoted as AALI onwards) scripts:

	$ wget https://github.com/ictsolved/aali/tarball/master

	$ tar -xvf master

Now the scripts will be available in the working directory along with this documentation in the live media. If you have made changes to your scripts as per your requirements, you are ready to automate the installation. If you directly downloaded my repo, then you need to modify the marked changes in the scripts with nano or vi, else BOOM! I am not responsible for the loss of your data. Consider this precaution seriously. You can't blame me later.

What do you get in your working directory after you download the repository and untar it?

	A. Base Installation

		1.base-installation.sh

		2.configure-system.sh

	B. Post Installation

		1.post-installation.sh

	C. Customization

# Step 2: Base Installation
Inside this directory, there are two scripts for setting up a base installation of Arch system automatically.

Phase 1 - Installing base system
Execute the following command to install the base system.

	$ cd ictsolved-AALI-xxxxxxx/1.Base-Installation/

	$ ./1.base-installation.sh

Followings are the list of actions performed:

	1. Updating system clock

	2. Formatting root partition (modification required)

	3. Mounting root and boot partitions (modification required)

	4. Turning on swap (modification required)

	5. Cleaning bootloaders of previous arch installation (if present)

	6. Updating to latest mirrors

	7. Importing new pacman keys

	8. Installing base system

	9. Generating fstab

	10. Changing root

Phase 2 - Configuring system inside chroot

Download the AALI scripts again as you did in Step 1 and extract it then enter the Base Installation folder. Now issue following commands:

	$ ./2.configure-system.sh

This results in:

	1. Setting time-zone

	2. Setting up locale

	3. Setting up Language

	4. Setting hostname

	5. Creating new initramfs

	6. Setting up a password for root user

	7. Creating user sarad

	8. Setting up password for sarad

	9. Enabling sudo for sarad

	10. Enabling multilib

	11. Installing Bootloader

	12. Copying bootloader configurations

	13. Updating Bootloaders

	14. Exiting chroot

	15. Unmounting partitions

	16. Reboot

# Step 3: Post-installation
After the reboot, login as a normal user and establish an internet connection. Download the scripts again as you did in Step 1. You can issue following commands:

	$ wget https://github.com/ictsolved/aali/tarball/master

	$ tar -xvf master

	$ cd ictsolved-AALI-xxxxxxx/2.Post-installation/

	$ ./1.post-installation.sh

The post-installation process begins and will result in the following outputs:

	1. Installing Packer

	2. Installing Drivers

		i. Installing Firmware Drivers

		ii. Installing Display Drivers

		iii. Installing Sound Drivers

		iv. Installing Device Drivers

		v. Installing Touchpad Drivers

	4. Installing Applications

		i. Installing Archive tools

		ii. Installing Libre Office

		iii. Installing Fonts

		iv. Installing VLC and Codecs

		v. Installing General Packages

		vi. Installing GIMP Photo Editor

		vii. Installing Google Chrome

		viii. Installing Evince Document Viewer

		ix. Installing Sublime Editor

		x. Installing Ruby and Gems

		xi. Installing redshift

		xii. Installing Oracle JDK

		xiii. Installing Black Arch Repo 

		xiv. Installing Network Manager

	5. Ignoring Lid Close

	6. Enabling Hibernation

After all the steps complete, you can reboot and log in with your credentials. Now you'll be greeted with XFCE4 or i3 as you installed.

# Step 4: Customization
This folder contains the customization files. Some customizations are automatically copied whereas few needs to be manually done as per the requirements. They are configurations files and will be helpful to accelerate the customization but are optional. It also contains scripts for boot repair, i.e. if you bootloader gets tripped, you can automate the boot repair too.