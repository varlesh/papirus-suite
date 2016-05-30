INSTALLDIR = $(DESTDIR)/usr/share/plasma/look-and-feel/
RM = rm -rf

all:

install: local

clear:
	$(RM) $(INSTALLDIR)com.github.varlesh.papirus
local:
	find com.github.varlesh.papirus -type f -exec install -Dm644 '{}' "$(INSTALLDIR){}" \;

uninstall: clear
