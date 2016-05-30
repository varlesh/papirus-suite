INSTALLDIR = $(DESTDIR)/usr/share/konsole/
RM = rm -rf

all:

install: local

clear:
	$(RM) $(INSTALLDIR)Papirus.colorscheme
local:
	find Papirus.colorscheme -type f -exec install -Dm644 '{}' "$(INSTALLDIR){}" \;

uninstall: clear
