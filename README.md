# check_nmap

`check_nmap` is a *Check_MK agent plug-in* that runs `nmap` against a
list of hostnames / IPs and compares the results with a white-list.

It only scans TCP and only well-known ports.

```bash
# Installation
sudo make install
```

Configuring the check plug-in is easy

```bash
# Create a file per host in the configuration directory. The filename defines
# the $remote to target nmap at (use IPs or resolvable hostnames). It contains
# a line-separated list of $port/$proto pairs like shown below.
mkdir -p /etc/check_mk/agent/nmap
cat <<EOF > /etc/check_mk/agent/nmap/example.com
80/tcp
443/tcp
EOF
```
----

Sponsored by Blunix GmbH.
