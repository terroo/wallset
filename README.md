# wallset
A wallpaper manager that makes it possible to put videos as wallpaper

# Installation
```sh
git clone https://github.com/terroo/wallset down-wallset
cd down-wallset
./install
```

# Uitlization
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
    -V,--video [video]    Adds a video as Wallpaper
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
