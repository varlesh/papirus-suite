INSTALLDIR = $(DESTDIR)/usr/share/konsole
RM = rm -rf

all:

install: local

clear:
	$(RM) $(INSTALLDIR)/Papirus{,-Transparent}.colorscheme
local:
	find Papirus{,-Transparent}.colorscheme -type f -exec install -Dm644 '{}' "$(INSTALLDIR)/{}" \;

uninstall: clear
