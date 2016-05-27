INSTALLDIR=$(DESTDIR)/usr/share/icons/

all:

install: local

clear:
	-rm -rf $(INSTALLDIR)Papirus*
local:
	install -d $(INSTALLDIR)
	cp -rf Papirus-Dark-GTK $(INSTALLDIR)
	cp -rf Papirus-GTK $(INSTALLDIR)

uninstall: clear
