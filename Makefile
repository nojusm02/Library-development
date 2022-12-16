LIBDIR:=./lib
SRCDIR:=./src

.PHONY: all install uninstall src lib clean

all: lib src

lib : 
	$(MAKE) -C $(LIBDIR)
src :
	$(MAKE) -C $(SRCDIR)
	
install: lib src
	$(MAKE) -C $(LIBDIR) install
	
clean :
	$(MAKE) -C $(LIBDIR) clean
	$(MAKE) -C $(SRCDIR) clean

uninstall: clean
	$(MAKE) -C $(LIBDIR) uninstall
	