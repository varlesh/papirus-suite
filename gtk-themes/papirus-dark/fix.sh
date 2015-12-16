#!/bin/bash
cd gtk-2.0
mogrify -colorspace GRAY Arrows/*.png
mogrify -colorspace GRAY Buttons/*.png
mogrify -colorspace GRAY Check-Radio/*.png
mogrify -colorspace GRAY Entry/*.png
mogrify -colorspace GRAY Expanders/*.png
mogrify -colorspace GRAY Handles/*.png
mogrify -colorspace GRAY Lines/*.png
mogrify -colorspace GRAY Menubar/*.png
mogrify -colorspace GRAY Others/*.png
mogrify -colorspace GRAY ProgressBar/*.png
mogrify -colorspace GRAY Range/*.png
mogrify -colorspace GRAY Scrollbars/*.png
mogrify -colorspace GRAY Shadows/*.png
mogrify -colorspace GRAY Spin/*.png
mogrify -colorspace GRAY Tabs/*.png
mogrify -colorspace GRAY Toolbar/*.png
sed -i 's|3DAEE9|363636|g' gtkrc
sed -i 's|31363B|222222|g' gtkrc
sed -i 's|232629|222222|g' gtkrc
sed -i 's|353535|222222|g' gtkrc
cp tool* Toolbar/
cp handle* Handles/
cp menu* Menubar/
cp slider* Scrollbars/
cd ..
cd gtk-3.0
mogrify -colorspace GRAY assets/*.png
sed -i 's|93cee9|2E2E2E|g' *css
sed -i 's|3DADE8|363636|g' *css
sed -i 's|3DAEE9|363636|g' *css
sed -i 's|3daee9|363636|g' *css
sed -i 's|31363B|222222|g' *css
sed -i 's|232629|222222|g' *css
sed -i 's|353535|222222|g' *css
cp *.png assets/
cd ..
