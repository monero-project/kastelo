BASENAME=breakneck
VERSION=0.7.1

PROJDIR=.
PKGDIR=$(PROJDIR)/release
TARBALL=$(BASENAME)-$(VERSION).tar.xz

# Main target
all:
	@echo 'This Makefile is not complete yet.'

# Distribute a release
dist: $(PKGDIR)/$(TARBALL)

# Clean generated files
clean:
distclean:
	$(RM) $(PKGDIR)/$(TARBALL)
	$(RM) -r $(PKGDIR)

$(PKGDIR)/$(TARBALL):
	@if not exist $(PKGDIR) mkdir $(PKGDIR)
	$(ZIP) $(PKGDIR)/$(TARBALL) $(PROJDIR) \
	  -x *.zip *.alt *.tmp *.bak kicad_pcb-bak
	$(CHMOD) 664 $(PKGDIR)/$(TARBALL)

.PHONY: all dist clean distclean
