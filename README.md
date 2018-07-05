# Sunshine-LinuxMint
**A simple Grub2 theme for Linux Mint. Designed to look best on Grub2 screen resolutions ranging from 640x480 to 1024x768.**

Please take note that Grub2 screen resolutions are usually lower than your preferred, actual screen resolution. And they are usually in 4:3 format rather than 16:9. This Grub2 theme was designed with these resolution constraints in mind. So, for example, you might be reading this on a beautiful 1920x1080 HD screen, but when you start your computer, the menu that lets you choose which system to start with and other options, called the Grub2 menu, is usually of lower resolution, like 1024x768 or even lower. So this Grub2 theme could be a nice enhancement that looks great on your computer.

![Default view](preview/Preview_800x600.png)

### Responsive Design (sort of)
I doubt we can have one theme that fits all different screen resolutions. There aren't many "Responsive Design" features on Grub2. Not yet. Here, i just tried to play with relative + absolute unit combinations to get a design that is flexible enough to look good on Grub2 screens ranging from 640x480 to 1024x768 resolutions. Also, we can't specify different font sizes for different screen sizes. So i selected a font size big enough to fill 100% of the smallest screen width: 640x480. Then, the Grub2 menu is aligned to the left of the screen, and the right side is decorated with this sunshine picture. On smaller screens, it overlaps and still looks good. Pictures are better than words here, just take a look at my different previews for different screen resolutions: https://github.com/SebastJava/Grub2-theme-Sunshine-LinuxMint/tree/master/preview

This theme being on the lower end of screen resolutions, it will **certainly** fit on your computer. The worst you could get is a menu that looks small and surrounded with lots of free space, but it would still be usable... But if you want to know which resolution is used by your Grub screen, do as follows:
1. Restart.
2. In Grub2, type "C" to enter command-line. Type `vbeinfo`. You should get a list of all available screen resolutions in Grub2. **Ignore** the "preferred mode": this one is probably not for Grub2. Look at the list instead: the higher resolution displayed there is the default Grub resolution.
3. Alternatively, you could choose your Grub2 screen resolution from that `vbeinfo` list, boot, and then edit `/etc/default/grub` file. There, in that file, find the line containing `GRUB_GFXMODE` and change it to `GRUB_GFXMODE=1024x768`. Replace "1024x768" with your chosen resolution. Uncomment that line if needed (remove the "#" at the beginning). Run `sudo update-grub` in your terminal. Restart and check your Grub2 menu.

### Installation
1. Click on **"Clone or download"**, this green button on the right side. There, select **"Download ZIP"**.
2. Open this **Grub2-theme-Sunshine-LinuxMint.ZIP.** Select the **Sunshine-LinuxMint** folder inside this ZIP. Extract this folder.
3. Copy this folder in **/boot/grub/themes/**. To do so, you could type this in your terminal: `sudo cp -R /path_to_folder_to_copy/ /boot/grub/themes`. Alternatively, you could just right-click on **/boot/grub/themes/** folder to **open it as administrator** and then just drag and drop your folder there. You may need to first create this **themes** folder if it's not already there.
4. Next, you need to change your **/etc/default/grub** file. Open this file as administrator. Find the line that starts with: `#GRUB_THEME=`. Change it to: `GRUB_THEME=/boot/grub/themes/Sunshine-LinuxMint/theme.txt`. Don't forget to remove the `#` sign.
5. Open your terminal and run this command: `sudo update-grub`. If things are OK, you should get this message, among others: `Found theme : /boot/grub/themes/Sunshine-LinuxMint/theme.txt`
6. Restart your computer and take a look at your new Grub menu.

### Optional
There is also a matching screen background for LightDM greeter, your login screen where you pick which user account and session type to use.
1. Open `/usr/share/backgrounds/` as administrator.
2. In this folder, add this file: https://github.com/SebastJava/Grub2-theme-Sunshine-LinuxMint/blob/master/Sunshine-LinuxMint-login.png
3. Open your LightDM greeter (or another greeter?) preferences and select your new background image. 
