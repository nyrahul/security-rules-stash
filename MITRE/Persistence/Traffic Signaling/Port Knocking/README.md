# Rules
Adversaries may use port knocking to hide open ports used for persistence or
command and control. To enable a port, an adversary sends a series of attempted
connections to a predefined sequence of closed ports. After the sequence is
completed, opening a port is often accomplished by the host based firewall, but
could also be implemented by custom software.

## Rule1
If a network packet is rcvd to unknown port or if the network packet is dropped
(not denied) because it does not have any service waiting for it then log the
packet details.

### Configuration
Have an upper limit on how much logging can be done.

### Applicability
Host

### Policy Engine
KubeArmor

### Action
Audit

