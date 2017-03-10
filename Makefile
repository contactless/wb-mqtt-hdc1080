LIBDIR=/usr/lib/wb-mqtt-hdc1080

.PHONY: all clean

all:
clean :

install: all
	install -d $(DESTDIR)
	install -d $(DESTDIR)/etc
	install -d $(DESTDIR)/usr/share/wb-mqtt-confed
	install -d $(DESTDIR)/usr/share/wb-mqtt-confed/schemas
	install -d $(DESTDIR)/usr
	install -d $(DESTDIR)/usr/bin
	install -d $(DESTDIR)/usr/lib
	install -d $(DESTDIR)/$(LIBDIR)

	install -m 0755 wb-mqtt-hdc1080.py   $(DESTDIR)/$(LIBDIR)/
	install -m 0755 hdc1080.py   $(DESTDIR)/$(LIBDIR)/
	install -m 0755 i2cbus.py   $(DESTDIR)/$(LIBDIR)/

	ln -s  $(LIBDIR)/wb-mqtt-hdc1080.py $(DESTDIR)/usr/bin/wb-mqtt-hdc1080

	install -m 0644  wb-mqtt-hdc1080.schema.json $(DESTDIR)/usr/share/wb-mqtt-confed/schemas/wb-mqtt-hdc1080.schema.json
	install -m 0644  config.json $(DESTDIR)/etc/wb-mqtt-hdc1080.conf









