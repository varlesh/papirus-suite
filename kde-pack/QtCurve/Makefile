INSTALLDIR = $(DESTDIR)/usr/share/QtCurve/
RM = rm -rf

all:

install: local

clear:
	$(RM) $(INSTALLDIR)Papirus{,_Transparent}.qtcurve
local:
	find Papirus{,_Transparent}.qtcurve -type f -exec install -Dm644 '{}' "$(INSTALLDIR){}" \;

uninstall: clear
