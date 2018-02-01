WATT_ROOT := $(CURDIR)
export WATT_ROOT

.PHONY: all clean doxygen install uninstall

all $(MAKECMDGOALS):
	$(MAKE) -C src -f djgpp.mak $@
