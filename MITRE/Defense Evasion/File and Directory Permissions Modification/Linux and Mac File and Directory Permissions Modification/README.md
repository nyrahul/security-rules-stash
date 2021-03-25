# Rules
Linux based platforms provide two primary commands used to manipulate file and
directory ACLs: chown (short for change owner), and chmod (short for change
mode). In general, in k8s env, there is no reason why these commands would be
used.

## Rule1
Audit following processes `chown, chmod`.

### Configuration
NA

### Applicability
Host, Container

### Policy Engine
KubeArmor

### Action
Audit

