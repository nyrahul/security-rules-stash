# Rules
Adversaries may attempt to dump the contents of `/etc/passwd` and `/etc/shadow`
to enable offline password cracking. Most modern Linux operating systems use a
combination of `/etc/passwd` and `/etc/shadow` to store user account
information including password hashes in `/etc/shadow`.

## Rule1
Audit any file open for `/etc/passwd` and `/etc/shadow`. Note that this is too
generic of a rule and additional checks needs to be thought of to reduce false
positives.

### Configuration
NA

### Applicability
Host

### Policy Engine
KubeArmor

### Action
Audit
