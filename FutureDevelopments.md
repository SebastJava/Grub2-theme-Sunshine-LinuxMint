# Future developments?
I am wondering if there is a way to know which screen resolution Grub2 is using. If there is such a thing, then maybe there could be a simple script in the Grub2 that redirects to another theme version for higher screen resolutions. Something approximately like:
```
$ScreenResolution[width,height]=GRUB_GFXMODE
If ($ScreenResolution[width] > 1024) {
GRUB_THEME=/boot/grub/themes/Sunshine-LinuxMint/theme-HIGHER.txt
}
Else {
GRUB_THEME=/boot/grub/themes/Sunshine-LinuxMint/theme.txt
}
```

Yeah, i know, this script won't work, i just "played" with JavaScript a long time ago. But it is just to illustrate what we would need. If we had such a script, then we could truly get Responsive Design. Maybe we could have TWO different `theme.txt` files in one common folder? One for the lower end, and one for the higher end. We would need this marvelous (possible?) script to achieve that, automatically and for every one. If we had a truly responsive design Grub2 theme, one that looks great on all screen sizes, then it would be great to include it in every Linux Mint distribution.
