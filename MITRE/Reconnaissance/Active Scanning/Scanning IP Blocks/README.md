# Rules

## Rule1

A malicious attacker will try to scan the list of usable target IPs by using TCP/UDP/ICMP scans. Following rules could be used to detect initiation of such scanning:
1. The scanner finds SCAN_THRESHOLD number of unique addresses per second that are scanned by checking TCP SYN.
2. The scanner finds SCAN_THRESHOLD number of unique addresses per second that are scanned by checking ICMP requests.

### Configuration
1. SCAN_THRESHOLD: 10 ... number of unique scans per second

### Applicability
Host, Container

## Rule2
A host could detect that there is an active scanner in the network by detecting scans involved across multiple ports.

1. Check if there are TCP SYNs sent across multiple TCP ports on the same host/container. SCAN_THRESHOLD parameter could be used to set the limit.

### Configuration
1. SCAN_THRESHOLD: 10 ... number of unique scans per second

### Applicability
Host, Container