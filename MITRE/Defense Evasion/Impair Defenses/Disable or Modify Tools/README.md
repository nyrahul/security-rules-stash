# Rules
Adversaries may disable security tools to avoid possible detection of their tools and activities.

## Rule1
Audit any event which could lead to disabling of LSMs:
For SELinux, audit any edits to following filesystem paths:
```
/etc/selinux/*
/etc/sysconfig/selinux
```
Audit process execution such as:
```
setenforce
```

### Configuration
NA

### Applicability
Host

### Policy Engine
KubeArmor

### Action
Audit
