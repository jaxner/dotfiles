dotfiles = $(shell ls | grep -v -e [mM]akefile -e [~\#]$)

install:   $(foreach file, $(dotfiles),   install-$(file))
uninstall: $(foreach file, $(dotfiles), uninstall-$(file))

install-%: %
	ln -fns $(CURDIR)/$< $(HOME)/.$<

uninstall-%: %
	rm -f $(HOME)/.$<

