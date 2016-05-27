INSTALLDIR-ARCH=$(DESTDIR)/usr/lib/libreoffice/share/config/
INSTALLDIR-AUR=$(DESTDIR)/opt/libreoffice5.1/share/config/

all:

install: local

clear:
	-rm -rf $(INSTALLDIR-ARCH)images_papirus*.zip
	-rm -rf $(INSTALLDIR-AUR)images_papirus*.zip
local:
	install -d $(INSTALLDIR-ARCH)
	install -d $(INSTALLDIR-AUR)
	cp -rf images_*.zip $(INSTALLDIR-ARCH)
	cp -rf images_*.zip $(INSTALLDIR-AUR)

uninstall: clear
