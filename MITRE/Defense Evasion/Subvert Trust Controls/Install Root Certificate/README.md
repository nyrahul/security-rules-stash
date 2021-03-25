# Rules
Adversaries may install a root certificate on a compromised system to avoid
warnings when connecting to adversary controlled web servers.

## Rule1
Audit the file system paths which have access to root certificates. Any
modification to following path `/usr/local/share/ca-certificates/*` should
raise an alert.

### Configuration
NA

### Applicability
Host

### Policy Engine
KubeArmor

### Action
Audit

