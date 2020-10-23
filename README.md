# wallset
A wallpaper manager that makes it possible to put videos as wallpaper

# Installation
First you will need to have the dependencies installed on your system:
+ [ffmpeg >=4.2.3](https://ffmpeg.org/)
+ [feh >=3.4.1](https://feh.finalrewind.org/)
+ [imagemagick >=7.0.10.16](https://www.imagemagick.org/)
+ [xrandr >=1.5.1](https://gitlab.freedesktop.org/xorg/app/xrandr)
+ [xdg-utils >=1.1.3](https://www.freedesktop.org/wiki/Software/xdg-utils/)
+ [bash >=4.0](http://tiswww.case.edu/php/chet/bash/bashtop.html)
+ [sed >=4.5](http://sed.sourceforge.net/)
> Some software may work in versions lower than those reported.

```sh
git clone https://github.com/terroo/wallset down-wallset
cd down-wallset
sudo sh install.sh
```
# The installer says that a package is not installed, but are you sure it is?
Then force the installation with the parameter `--force`:
```sh
sudo ./install.sh --force
```

# Use
```sh
usage: wallset [options]
  
  Options:
    -u,--use [N]          Change the Wallpaper to the number entered. Use images with 3 digits, example: 014,003,099
    -a,--add img.jpg ...  Add images
    -S,--set              Use before the -a, --add parameter when you want to add already change       
    -q,--quit             Ends the loop
    -t,--time [N]         Creates an image loop with the time reported in seconds
    -d,--display          Opens the last image added
    -c,--count            Informs how many images there are
    -s,--show             Shows the current image
    -V,--video [video]    Add a video as Wallpaper
    -L,--list-videos      Lists the videos that have already been used
    -I,--set-video [N]    Use the video by the number listed in --list-videos
    -r,--remove           Remove the last image added
    -h,--help             Display this help
    -v,--version          Display the version of this program

  Examples:  
    Add an image → 'wallset -a img.jpg'
    Add and set it as Wallpaper → 'wallset --set --add img.jpg'
    Change to image with this number → 'wallset -u 001'
    Add the video → 'wallset -V video.mp4'
    Use the video already used and listed → 'wallset -I 3'

* [N] Means that you need to use a number
** Only videos in .mp4 format
*** Only the first 10 seconds of the video will be displayed
**** Use 3-digit images, example: 011
```

There is a video that demonstrates the use at the address (pt-BR): <https://youtu.be/Mb0SXMft2sw>

# Uninstall
```sh
git clone https://github.com/terroo/wallset down-wallset
cd down-wallset
sudo sh install.sh uninstall
```
