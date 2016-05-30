INSTALLDIR = $(DESTDIR)/usr/share/color-schemes/
RM = rm -rf

all:

install: local

clear:
	$(RM) $(INSTALLDIR)Papirus.colors
local:
	find Papirus.colors -type f -exec install -Dm644 '{}' "$(INSTALLDIR){}" \;

uninstall: clear
