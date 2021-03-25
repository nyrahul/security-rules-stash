# Rules
Adversaries may modify pluggable authentication modules (PAM) to access user
credentials or enable otherwise unwarranted access to accounts. PAM is a
modular system of configuration files, libraries, and executable files which
guide authentication for many services. The most common authentication module
is pam_unix.so, which retrieves, sets, and verifies account authentication
information in /etc/passwd and /etc/shadow.

## Rule1
Monitor PAM configuration and module paths `/etc/pam.d/, pam_unix.so, /etc/passwd, /etc/shadow` for changes.

### Configuration
NA

### Applicability
Host, Container

### Policy Engine
KubeArmor

### Action
Audit

