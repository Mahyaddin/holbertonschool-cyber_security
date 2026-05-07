#!/bin/bash
grep -Ev '^#|^$' /etc/ssh/sshd_config | grep -E 'Include|KbdInteractiveAuthentication|UsePAM|X11Forwarding|PrintMotd|AcceptEnv|Subsystem|PasswordAuthentication|PermitRootLogin|AuthorizedKeysFile|TCPKeepAlive'
