PREFIX ?= /usr
DESTDIR ?=
BINDIR ?= $(PREFIX)/bin
LIBDIR ?= $(PREFIX)/lib
MANDIR ?= $(PREFIX)/share/man
SYSTEMDUNITDIR ?= $(LIBDIR)/systemd
BASHCOMPDIR ?= $(PREFIX)/share/bash-completion/completions

all:
	@echo "zebrakow is a shell script, so there is nothing to do. Try \"make install\" instead."


install:
	@install -v -d "$(DESTDIR)$(LIBDIR)/zebrakow" && install -m 0755 -v src/lib/zebrakow-setup "$(DESTDIR)$(LIBDIR)/zebrakow/zebrakow-setup"
	@install -v -d "$(DESTDIR)$(BINDIR)/" && install -m 0755 -v src/zebrakow "$(DESTDIR)$(BINDIR)/zebrakow"
	@install -v -d "$(DESTDIR)$(MANDIR)/man1" && install -m 0644 -v man/zebrakow.1 "$(DESTDIR)$(MANDIR)/man1/zebrakow.1"
	@install -v -d "$(DESTDIR)$(BASHCOMPDIR)" && install -m 0644 -v bash-completion/zebrakow "$(DESTDIR)$(BASHCOMPDIR)/zebrakow"
	@install -v -d "$(DESTDIR)$(SYSTEMDUNITDIR)/system" && install -m 0644 -v units/zebrakow.slice "$(DESTDIR)$(SYSTEMDUNITDIR)/system/zebrakow.slice"
	@install -v -d "/etc/zebrakow" && install -m 0644 -v etc/zebrakow.profile "/etc/zebrakow/zebrakow.profile"
uninstall:
	@rm -vrf \
		"$(DESTDIR)$(BINDIR)/zebrakow" \
		"$(DESTDIR)$(LIBDIR)/zebrakow-setup" \
		"$(DESTDIR)$(MANDIR)/man1/zebrakow.1" \
		"$(DESTDIR)$(BASHCOMPDIR)/zebraow" \
		"$(DESTDIR)$(SYSTEMDUNITDIR)/system/zebrakow.slice"

.PHONY: install uninstall all
