INSTALLDIR=$(DESTDIR)/usr/share/sddm/themes/

all:

install: local

clear:
	-rm -rf $(INSTALLDIR)papirus*
local:
	find papirus* -type f -exec install -Dm644 '{}' "$(INSTALLDIR)/{}" \;

uninstall: clear
