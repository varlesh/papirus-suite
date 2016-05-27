INSTALLDIR=$(DESTDIR)/usr/share/color-schemes/

all:

install: local

clear:
	-rm -rf $(INSTALLDIR)Papirus*
local:
	find Papirus* -type f -exec install -Dm644 '{}' "$(INSTALLDIR)/{}" \;

uninstall: clear
