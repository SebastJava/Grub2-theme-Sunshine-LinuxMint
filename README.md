# Sunshine-LinuxMint
A simple Grub2 theme for Linux Mint. Designed to be compatible with all screens.

![Default view](preview/Preview_800x600.png)

### Description
Sunshine-LinuxMint is a Grub2 theme. It is a visual enhancement to your actual boot menu, where you select your operating system when you start your computer.
It is carefully designed to be compatible with, hopefully, all computer screens. Usually, the screen resolutions that are available for your Grub are **lower** than your actual, preferred screen resolution. And they are usually in **4:3 format** rather than 16:9. This Grub2 theme was designed with these resolution constraints in mind. It works with different screen resolutions, starting from 640x480 and going up to 1024x768 or higher. The image above is a preview of the 800x600 GRUB_GFXMODE. Take a look at the **preview** folder to get a preview of other screen resolutions.

### Installation
1. Click on **"Clone or download"**, this green button on the right side. There, select **"Download ZIP"**.
2. Open this **Grub2-theme-Sunshine-LinuxMint.ZIP.** Select the **Sunshine-LinuxMint** folder inside this ZIP. Extract this folder.
3. Copy this folder in **/boot/grub/themes/**. To do so, you could type this in your terminal: `sudo cp -R /path_to_folder_to_copy/ /boot/grub/themes`. Alternatively, you could just right-click on **/boot/grub/themes/** folder to **open it as administrator** and then just drag and drop your folder there. You may need to first create this **themes** folder if it's not already there.
4. Next, you need to change your **/etc/defaut/grub** file. Open this file as administrator. Find the line that starts with: `#GRUB_THEME=`. Change it to: `GRUB_THEME=/boot/grub/themes/Sunshine-LinuxMint/theme.txt`. Don't forget to remove the `#` sign.
5. Open your terminal and run this command: `sudo update-grub`. If things are OK, you should get this message, among others: `Found theme : /boot/grub/themes/Sunshine-LinuxMint/theme.txt`
6. Restart your computer and take a look at your new Grub menu.

### Optional
There is also a matching screen background for LightDM greeter, your login screen where you pick which user account and session type to use.
1. Open `/usr/share/backgrounds/` as administrator.
2. In this folder, add this file: `/sources/Sunshine-background/Sunshine-LinuxMint-login.png`.
3. Open your LightDM greeter (or another greeter?) preferences and select your new background image. 
