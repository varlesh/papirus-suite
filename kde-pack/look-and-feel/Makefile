INSTALLDIR=$(DESTDIR)/usr/share/plasma/look-and-feel/

all:

install: local

clear:
	-rm -rf $(INSTALLDIR)com.github.varlesh*
local:
	find com.github.varlesh* -type f -exec install -Dm644 '{}' "$(INSTALLDIR)/{}" \;

uninstall: clear
