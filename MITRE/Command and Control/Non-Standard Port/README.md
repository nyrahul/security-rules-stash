# Rules
Adversaries may communicate using a protocol and port paring that are typically
not associated. For example, HTTPS over port 8088 or port 587 as opposed to the
traditional port 443. Adversaries may make changes to the standard port used by
a protocol to bypass filtering or muddle analysis/parsing of network data.

## Rule1
Zero trust based network policy settings would avoid such attacks.

### Configuration
NA

### Applicability
Host, Container

### Policy Engine
Cilium

### Action
Audit, Enforce
