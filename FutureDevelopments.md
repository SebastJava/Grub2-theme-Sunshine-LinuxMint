# Future developments
### Width of boot_menu or other elements
This Sunshine-LinuxMint Grub2 theme has a full (100%) width boot menu. On the smallest screen, the one set at 640x480 resolution, the items text will almost fill this full width. But on larger screens this text will simply hold the left part of the screen. It looks good with the carefully chosen background image, which can be overlapped or not, depending on screen resolutions.

Alternatively, we could build another theme where the boot menu would have a fixed width, one fulfilling the small screens while being **centered** on larger screens. This could be achieved with a clever combination of absolute and relative units:
```
+ boot_menu {
	width=640 # equals full width of the smallest screen, in pixels
	left=50%-320 # (50% of screen width) - (1/2 smallest screen width)
...}
```  
In other words, the left margin is equal to (100%-640)/2

So the left margin is equal to half of the extra space around a menu of fixed 640 pixels width.

**Examples:**

where screen-width = 640 || left margin=(100%-640)/2 || (640-640)/2=0 || OR left=50%-320 || left=320-320=0

where screen-width = 800 || left margin=(100%-640)/2 || (800-640)/2=80 || OR left=50%-320 || left=400-320=80

where screen-width = 1024 || left margin=(100%-640)/2 || (1024-640)/2=192 || OR left=50%-320 || left=512-320=192

That is for the left margin.
And what are the measurements for the right margin? Just the same.

So the boot menu is always centered.

### Height of boot_menu
We should take into consideration the "Advanced Options" in boot menu, offering to choose from many different system versions. So it could be a good thing to have a boot_menu which uses as much vertical space as available, while preserving some fixed, absolute values for vertical margins. Like this:
```
+ boot_menu {
	top=100 # 100 or any other absolute value
	height=100%-200 # 200 or any other absolute value
...}
```
Of course, depending on your needs, you may prefer to set height values with the proposed method for width values, and vice-versa.

### Controlled range of screen resolutions
The goal here is to create one theme that fits all screens. We know we can create elements of variable or fixed dimensions and margins. The margins can only be set with `top, left, width, height` properties, but we saw we can make clever use of these in combining relative and absolute values for these properties. We saw we can get things to span across an entire small screen, while being **automatically centered** on any larger one. Or we can get fixed, absolute margin values for elements of variable width and height. We could also get things to be **aligned right**, like this: `left=100%-VALUE`. Replace "VALUE" with the width of the element you want to be right-aligned. Same thing to get things **aligned to bottom**: `top=100%-VALUE`. There are many possibilities...

After creating this kind of simple "Responsive Design" theme, we need to control the range of screen resolutions for Grub2. This can be achieved with something like this:

Change the following line in `/etc/default/grub` file:
```
    GRUB_GFXMODE
```
Entirely select the line and replace it with this one:
```
    GRUB_GFXMODE=1024x768,800x600,640x480,auto
```
You may change these values, of course, but you should always keep this "auto" at the end. Grub will take the first available mode from that list.

This way we can create a theme that can "squeeze" itself on small screens, breathe on medium sized screens, while preventing it from being "spaced out" on high-resolution capable grub screens. Remember, this only sets "GRUB_GFXMODE"; the users will not loose their HD settings.
