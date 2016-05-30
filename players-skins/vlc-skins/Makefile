INSTALLDIR=$(DESTDIR)/usr/share/vlc/skins2/
RM = rm -rf

all:

install: local

clear:
	$(RM) $(INSTALLDIR)Papirus.vlt
local:
	find Papirus.vlt -type f -exec install -Dm644 '{}' "$(INSTALLDIR){}" \;

uninstall: clear
