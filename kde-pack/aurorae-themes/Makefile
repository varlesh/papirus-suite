INSTALLDIR = $(DESTDIR)/usr/share/aurorae/themes/
RM = rm -rf

all:

install: local

clear:
	$(RM) $(INSTALLDIR)Papirus{,-Transparent}
local:
	find Papirus{,-Transparent} -type f -exec install -Dm644 '{}' "$(INSTALLDIR){}" \;

uninstall: clear
