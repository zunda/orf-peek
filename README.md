orf-peek
========

This is a small software to peek raw pixel values from images taken with digital cameras.

## Description
This software a modificatoin to
[dcraw.c](http://cybercom.net/%7Edcoffin/dcraw/dcraw.c) by [Dae Coffin](http://cybercom.net/%7Edcoffin/).
which adds output of raw pixel values as ascii text into the standard output.

## Demo
```
./dcraw -R 2008 1124 10 10 example/P9101350.ORF
```

## Usage
Details of the image
```
$ ./dcraw  -i -v example/P9101350.ORF  

Filename: example/P9101350.ORF
Timestamp: Wed Sep 10 21:14:47 2014
Camera: Olympus E-510
ISO speed: 400
Shutter: 1/125.0 sec
Aperture: f/8.0
Focal length: 150.0 mm
Embedded ICC profile: no
Number of raw images: 1
Thumb size:  1600 x 1200
Full size:   3720 x 2800
Image size:  3720 x 2800
Output size: 3720 x 2800
Raw colors: 3
Filter pattern: RGGBRGGBRGGBRGGB
Daylight multipliers: 2.129439 0.937830 1.096957
Camera multipliers: 1.796875 1.000000 1.320312 0.000000
```

## Install

## Licence
[GPL Version 2](gpl-2.0.txt) or later

## Author
- [dcraw.c](http://cybercom.net/%7Edcoffin/dcraw/dcraw.c) by [Dae Coffin](http://cybercom.net/%7Edcoffin/)
- modification by zunda [zundan@gmail.com](mailto:zundan@gmail.com)
