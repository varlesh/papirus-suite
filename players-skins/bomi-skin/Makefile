INSTALLDIR = $(DESTDIR)/usr/share/bomi/skins/
RM = rm -rf

all:

install: local

clear:
	$(RM) $(INSTALLDIR)Papirus
local:
	find Papirus -type f -exec install -Dm644 '{}' "$(INSTALLDIR){}" \;

uninstall: clear
