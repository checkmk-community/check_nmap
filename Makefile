.PHONY: install
install:
	mkdir -p /usr/lib/check_mk/agent/local/300
	cp check_nmap /usr/lib/check_mk/agent/local/300/check_nmap
	chmod -x /usr/lib/check_mk/agent/local/300/check_nmap
	@echo
	@echo Now create one configuration file per target at:
	@echo - /etc/check_mk/agent/nmap
	@echo

.PHONY: uninstall
uninstall:
	rm /usr/lib/check_mk/agent/local/300/check_nmap
