# systune-0.5

.PHONY: clean build install

all: build

clean:
	-rm -f build-stamp

build: build-stamp

build-stamp:
	touch build-stamp

install: install-stamp

install-stamp:
	install -m 0755 -d $(ROOT)/usr/sbin/
	install -m 0755 systune $(ROOT)/usr/sbin/
	install -m 0755 systunedump $(ROOT)/usr/sbin/
	install -m 0755 -d $(ROOT)/etc/
	install -m 0644 systune.conf $(ROOT)/etc/
	install -m 0644 systune.dump $(ROOT)/etc/
