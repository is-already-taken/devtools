
.PHONY: install commands bash-bindings vim

install: commands bash-bindings vim

commands:
	cp git/commands/git-* $(HOME)/bin/

bash-bindings:
	cp git/bash-bindings/binding-git* $(HOME)/.bashrc.d/

vim:
	cp git/vim/commands/git-* $(HOME)/.vim/plugins
