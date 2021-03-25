# Rules
Adversaries may use a non-application layer protocol for communication between
host and C2 server or among infected hosts within a network. The list of
possible protocols is extensive. Specific examples include use of network layer
protocols, such as the Internet Control Message Protocol (ICMP), transport
layer protocols, such as the User Datagram Protocol (UDP), session layer
protocols, such as Socket Secure (SOCKS), as well as redirected/tunneled
protocols, such as Serial over LAN (SOL).

## Rule1
There are two types of protocols that are possible:
1. Use of non-standard transport protocols: This can be taken care using zero-trust based network policy settings.
2. ICMP traffic accounting could help audit ICMP based payloads.

### Configuration
NA

### Applicability
Host, Container

### Policy Engine
KubeArmor, Cilium

### Action
Audit
