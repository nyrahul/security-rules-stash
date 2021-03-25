# Rules
Adversaries may poison Address Resolution Protocol (ARP) caches to position
themselves between the communication of two or more networked devices.

## Rule1
Audit use of gratuitous ARP reply packets on the host. Note that gratuitous ARP
request packets could be used for IP conflict verification in normal scenarios
and thus only gratuitous replies need to be audited.

From the sender's perspective, audit any gratuitous ARP send.

### Configuration
NA

### Applicability
Host

### Policy Engine
KubeArmor

### Action
Audit

