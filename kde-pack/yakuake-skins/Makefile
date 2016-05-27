INSTALLDIR=$(DESTDIR)/usr/share/yakuake/skins/

all:

install: local

clear:
	-rm -rf $(INSTALLDIR)papirus*
local:
	find papirus* -type f -exec install -Dm644 '{}' "$(INSTALLDIR)/{}" \;

uninstall: clear
