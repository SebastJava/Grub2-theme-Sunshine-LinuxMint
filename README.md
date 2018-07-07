# Sunshine-LinuxMint
**Boot screen (Grub2) theme for Linux Mint.** One size fits all.

![Default view](preview/Preview_800x600.png)

### Responsive Design
I tried to make a theme that fits all different screen resolutions. We call this "Responsive Design". But there are no sophisticated Responsive Design features on Grub2. So i just made wise use of relative plus absolute unit combinations to get a design that is flexible enough to look good on Grub2 screens ranging from 640x480 to 1024x768 resolutions. Grub2 screens are usually in lower resolutions like these. Grub2 is a kind of small system running before your actual system starts, so this explains the lower screen resolutions and other limited features. Your screen will automatically use one of these compatible resolutions, preferring the higher ones when possible. This is just for the boot menu, before you start your computer system. Your screen will automatically switch back to your preferred screen resolution right after booting.

Also, to make sure the text does not look small on higher resolution screens, i selected a font size that fills 100% of the smallest screen width. On higher resolutions, the boot menu is aligned to the left of the screen, and the right side is decorated with this sunshine picture. On smaller screens, it overlaps and still looks good. Pictures are better than words here, just take a look at my different previews from different screen resolutions: https://github.com/SebastJava/Grub2-theme-Sunshine-LinuxMint/blob/master/Preview.md

### Installation
1. Click on **"Clone or download"**, this green button on the right side of this GitHub page. There, select **"Download ZIP"**.
2. Open this **Grub2-theme-Sunshine-LinuxMint.ZIP.** Select the **Sunshine-LinuxMint** folder inside this ZIP. Extract this folder.
3. Copy this folder in `/boot/grub/themes`. To do so, you could type this in your terminal: `sudo cp -R /path_to_Sunshine-LinuxMint_folder_to_copy/ /boot/grub/themes`. Alternatively, you could just right-click on `/boot/grub/themes` folder to **open it as administrator** and then just drag and drop your **Sunshine-LinuxMint** folder in there. You may need to first create this **themes** folder if it's not already there.
4. Next, you need to change your **/etc/default/grub** file. Open this file as administrator. Find the group of one to four lines containing some or all of these:
```
    GRUB_GFXMODE
    GRUB_GFXPAYLOAD_LINUX
    GRUB_BACKGROUND
    GRUB_THEME
```
Entirely select all the lines and replace them with this group of lines:
```
    GRUB_GFXMODE=1024x768,800x600,640x480,auto
    GRUB_GFXPAYLOAD_LINUX=1024x768,800x600,640x480,auto
    #GRUB_BACKGROUND=
    GRUB_THEME=/boot/grub/themes/Sunshine-LinuxMint/theme.txt
```
Don't forget to uncomment those lines: remove the "#" at the beginning, except for `#GRUB_BACKGROUND=`, as displayed.

5. Open your terminal and run this command: `sudo update-grub`. If things are OK, you should get this message, among others: `Found theme : /boot/grub/themes/Sunshine-LinuxMint/theme.txt`
6. Restart your computer and take a look at your new Grub menu...

### Optional
There is also a matching screen background for your login screen; this screen where you pick which user account and session type to use.
1. Open the folder `/usr/share/backgrounds` as administrator.
2. In this folder, download and add this file: https://github.com/SebastJava/Grub2-theme-Sunshine-LinuxMint/blob/master/Sunshine-LinuxMint-login.png
3. Go to **Start Menu > Preferences** and open your LightDM greeter preferences (LightDM or whatever your login screen manager is). In there, select your new background image for your login screen.
