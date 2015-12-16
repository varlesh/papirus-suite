#!/bin/bash
# Fix GTK 2
mogrify -colorspace GRAY ../gtk-2.0/Arrows/*.png
mogrify -colorspace GRAY ../gtk-2.0/Buttons/*.png
mogrify -colorspace GRAY ../gtk-2.0/Check-Radio/*.png
mogrify -colorspace GRAY ../gtk-2.0/Entry/*.png
mogrify -colorspace GRAY ../gtk-2.0/Expanders/*.png
mogrify -colorspace GRAY ../gtk-2.0/Handles/*.png
mogrify -colorspace GRAY ../gtk-2.0/Lines/*.png
mogrify -colorspace GRAY ../gtk-2.0/Menubar/*.png
mogrify -colorspace GRAY ../gtk-2.0/Others/*.png
mogrify -colorspace GRAY ../gtk-2.0/ProgressBar/*.png
mogrify -colorspace GRAY ../gtk-2.0/Range/*.png
mogrify -colorspace GRAY ../gtk-2.0/Scrollbars/*.png
mogrify -colorspace GRAY ../gtk-2.0/Shadows/*.png
mogrify -colorspace GRAY ../gtk-2.0/Spin/*.png
mogrify -colorspace GRAY ../gtk-2.0/Tabs/*.png
mogrify -colorspace GRAY ../gtk-2.0/Toolbar/*.png
sed -i 's|3DAEE9|888888|g' ../gtk-2.0/gtkrc
cp slider* ../gtk-2.0/Scrollbars/
# Fix GTK 3
mogrify -colorspace GRAY ../gtk-3.0/assets/*.png
sed -i 's|93cee9|A6A6A6|g' ../gtk-3.0/*css
sed -i 's|3DADE8|888888|g' ../gtk-3.0/*css
sed -i 's|3DAEE9|888888|g' ../gtk-3.0/*css
sed -i 's|3daee9|888888|g' ../gtk-3.0/*css
cp titlebutton* ../gtk-3.0/assets/