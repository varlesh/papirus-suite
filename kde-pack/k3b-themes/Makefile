K3BKDE4DIR=$(DESTDIR)/usr/share/apps/k3b/pics/
K3BKF5DIR=$(DESTDIR)/usr/share/k3b/pics/

all:

install: local

clear:
	-rm -rf $(K3BKDE4DIR)Papirus*
	-rm -rf $(K3BKF5DIR)Papirus*
local:
	find Papirus* -type f -exec install -Dm644 '{}' "$(K3BKDE4DIR)/{}" \;
	find Papirus* -type f -exec install -Dm644 '{}' "$(K3BKF5DIR)/{}" \;

uninstall: clear
