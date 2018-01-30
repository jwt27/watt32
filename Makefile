WATT_ROOT := $(CURDIR)
export WATT_ROOT

all $(MAKECMDGOALS):
	$(MAKE) -C src -f djgpp.mak $@
