# Future developments
This Grub theme has a full (100%) width boot menu. On the smallest screen, the one set at 640x480 resolution, the items text will almost fill this full width. But on larger screens this text will simply hold the left part of the screen. It looks good with the carefully chosen background image, which can be overlapped or not, depending on screen resolutions.

Alternatively, we could build another theme where the boot menu would use full width on small screens, and be **centered** on larger screens. This could be achieved with a clever combination of absolute and relative units:

+ boot_menu {
	width=640 # equals full width of the smallest screen, in pixels
  left=50%-320 # (50% of screen width) - (1/2 smallest screen width)
  ...}
  
  In other words, the left margin is equal to (100%-640)/2
  So the left margin is equal to half of the extra space around a menu of fixed 640 pixels width.
  
  **Examples:**
  where screen-width = 640 || left margin=(100%-640)/2  ||  (640-640)/2=0    || OR left=50%-320  || left=320-320=0
  where screen-width = 800 || left margin=(100%-640)/2  ||  (800-640)/2=80   || OR left=50%-320  || left=400-320=80
  where screen-width =1024 || left margin=(100%-640)/2  || (1024-640)/2=192  || OR left=50%-320  || left=512-320=192

That is for the left margin. And what are the measurements for the right margin? Just the same. So the boot menu is always centered.
