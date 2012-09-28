excludes := Makefile
dotfiles := $(filter-out $(excludes), $(wildcard *))

install:   $(foreach file, $(dotfiles),   install-$(file))
uninstall: $(foreach file, $(dotfiles), uninstall-$(file))

install-%: %
	ln -fns $(CURDIR)/$< $(HOME)/.$<

uninstall-%: %
	rm -f $(HOME)/.$<

