INSTALLDIR=$(DESTDIR)/usr/share/icons/
AMAROKDIR=$(DESTDIR)/usr/share/apps/amarok/icons/

all:

install: local

clear:
	-rm -rf $(INSTALLDIR)papirus
	-rm -rf $(INSTALLDIR)papirus-black-panel
	-rm -rf $(INSTALLDIR)papirus-dark
	-rm -rf $(AMAROKDIR)/papirus/
	-rm -rf $(AMAROKDIR)/papirus-black-panel/
	-rm -rf $(AMAROKDIR)/papirus-dark/
local:
	install -d $(INSTALLDIR)
	install -d $(AMAROKDIR)/papirus/
	install -d $(AMAROKDIR)/papirus-black-panel/
	install -d $(AMAROKDIR)/papirus-dark/
	
	cp -rf papirus* $(INSTALLDIR)
	cp -rf papirus/extra-icons/amarok/*              $(AMAROKDIR)/papirus/
	cp -rf papirus-black-panel/extra-icons/amarok/*  $(AMAROKDIR)/papirus-black-panel/
	cp -rf papirus-dark/extra-icons/amarok/*         $(AMAROKDIR)/papirus-dark/

uninstall: clear
