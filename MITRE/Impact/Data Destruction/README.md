# Rules
Adversaries may destroy data and files on specific systems or in large numbers
on a network to interrupt availability to systems, services, and network
resources.

## Rule1
Audit execution of file delete/modify in context of systems binary folders such
as `/bin/*, /usr/bin/*, /usr/sbin/*`.

### Configuration
NA

### Applicability
Host, Container

### Policy Engine
KubeArmor

### Action
Audit, Enforce
