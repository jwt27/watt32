WATT_ROOT := $(CURDIR)
export WATT_ROOT

all:
	$(MAKE) -C src -f djgpp.mak
