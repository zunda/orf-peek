orf-peek
========

This is a small software to peek raw pixel values from images taken with digital cameras.

## Description
This software is a modification to
[dcraw.c](http://cybercom.net/%7Edcoffin/dcraw/dcraw.c) by [Dae Coffin](http://cybercom.net/%7Edcoffin/),
which adds output of average and standard deviation of raw pixel values.

## Usage
### Preview
Use an image viewer to preview the image and decide where in the image
to take statistics.

Create a preview image. Otherwise, refer to the corresponding jpeg file.
```
$ dcraw -v -H 5 ./example/P9101350.ORF
Loading Olympus E-510 image from ./example/P9101350.ORF ...
Scaling with darkness 72, saturation 3946, and
multipliers 1.000000 0.440412 0.515139 0.440412
AHD interpolation...
Rebuilding highlights...
Converting to sRGB colorspace...
Writing data to ./example/P9101350.ppm ...
```

Open the preview.
```
$ open ./example/P9101350.ppm
```

By moving the mouse around,
decide location of the top left corner, width, and height in pixels
where statistics should be taken.
Note that the pixel at the top left corner is at (x, y) = (0, 0).

### Statistics
By specifying the coordinate of the top left corner as well as
widtn and height, let the program calculate average and standard deviation
of the pixels inside the rectangle for each color of Bayer filter.

The example below calculates statistics for 100 pixels
around the bright part of the Moon.

```
$ dcraw -R 2008 1124 10 10 ./example/P9101350.ORF
#Filename: ./example/P9101350.ORF
#Timestamp: Wed Sep 10 21:14:47 2014
#Camera: Olympus E-510
#ISO speed: 400
#Shutter: 1/125.0 sec
#Aperture: f/8.0
#Focal length: 150.0 mm
#Raw values for piexels on or in reactangle (2008,1124)-(2017,1133)
#Filter	average	stddev	n_pixels
R	1828.5	77.5	25
G	2561.5	116.2	50
B	1449.8	67.0	25
```

### More features
Run `dcraw` without an option for a list.

```
$ dcraw

Raw photo decoder "dcraw" v9.22
by Dave Coffin, dcoffin a cybercom o net

Usage:  ./dcraw [OPTION]... [FILE]...

-v        Print verbose messages
-c        Write image data to standard output
-e        Extract embedded thumbnail image
-i        Identify files without decoding them
-i -v     Identify files and show metadata
  :
```

## Install
On OS X, you need either Xcode or Command Line Tools for Xcode installed.

```
$ git clone https://github.com/zunda/orf-peek.git
$ cd orf-peek
$ make
$ sudo cp dcraw /usr/local/bin
```

## Licence
[GPL Version 2](gpl-2.0.txt) or later

## Author
- [dcraw.c](http://cybercom.net/%7Edcoffin/dcraw/dcraw.c) by [Dae Coffin](http://cybercom.net/%7Edcoffin/)
- Modification by zunda &lt;zundan@gmail.com&gt;
