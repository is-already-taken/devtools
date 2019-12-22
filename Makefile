
.PHONY: all install backup diff

all: install diff

install: backup
	make -f git/Makefile
	make -f bash/Makefile

backupdir=.backup-$(shell date '+%s')

backup:
	mkdir $(HOME)/bin/$(backupdir) && \
		cp $(HOME)/bin/* $(HOME)/bin/$(backupdir) ; \
	mkdir $(HOME)/.bashrc.d/$(backupdir) && \
		cp $(HOME)/.bashrc.d/* $(HOME)/.bashrc.d/$(backupdir)

diff:
	echo "This is the difference:"
	diff --color -u $(HOME)/bin/$(backupdir) $(HOME)/bin/ || true
	diff --color -u $(HOME)/.bashrc.d/$(backupdir) $(HOME)/.bashrc.d/ || true
