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
	install -m 0755 -d $(DESTDIR)/usr/sbin/
	install -m 0755 systune $(DESTDIR)/usr/sbin/
	install -m 0755 systunedump $(DESTDIR)/usr/sbin/
	install -m 0755 -d $(DESTDIR)/etc/
	install -m 0644 systune.conf $(DESTDIR)/etc/
	install -m 0644 systune.dump $(DESTDIR)/etc/
