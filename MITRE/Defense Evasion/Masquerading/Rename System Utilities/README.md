# Rules
Adversaries may rename legitimate system utilities to try to evade security
mechanisms concerning the usage of those utilities.

## Rule1
Audit file copy events for `/usr/bin`, `/bin` folders.
Audit file rename events for `/usr/bin`, `/bin` folders.

### Configuration
NA

### Applicability
Host, Container

### Policy Engine
KubeArmor

### Action
Audit

