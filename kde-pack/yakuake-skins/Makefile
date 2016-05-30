INSTALLDIR = $(DESTDIR)/usr/share/yakuake/skins/
RM = rm -rf

all:

install: local

clear:
	$(RM) $(INSTALLDIR)papirus
local:
	find papirus -type f -exec install -Dm644 '{}' "$(INSTALLDIR){}" \;

uninstall: clear
