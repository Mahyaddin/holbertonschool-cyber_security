# 0x0b. Web Application Fast Incident Response

Fast triage scripts analyzing `logs.txt` from a DoS attack.

## 0. Identify the Attack Source
`0-attack_ip.sh` — finds the IP with the most requests.

**Answer: 54.145.34.34** — sent 5000 requests, vs 3-11 for all other IPs.
