# Rules

## Rule1
1. Check if any of the following external utilities are been used to compress file or data `bzip2, tar, zip`

### Applicability
Host, Container

### Policy Engine
KubeArmor

### Action
Audit, Enforce

## Rule2
1. Enforce copy-protection for executables `bzip2, tar, zip`. If anyone attempts to copy these files to a different name then block the copy attempt.

### Applicability
Host, Container

### Policy Engine
Kubearmor

### Action
Audit, Enforce

