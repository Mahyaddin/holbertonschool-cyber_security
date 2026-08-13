# 0x0C. Web Application Forensics

Forensic analysis of `auth.log` and `dmesg` from a compromised Linux server.

## 0. Attacker Service
`0-service.sh` scans `auth.log` to identify the service used to gain access.

**Answer: sshd** — thousands of failed/invalid login attempts followed by
successful logins, all from `sshd`. Classic SSH brute-force pattern.
