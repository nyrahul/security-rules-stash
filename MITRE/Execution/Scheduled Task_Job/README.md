# Rules

## Rule1
Send an alert if processes (cron | at) are invoked. These processes operate at host level and are used ofr periodic execution.

### Configuration
NA

### Applicability
Host

### Policy Engine
KubeArmor

### Action
Audit

## Rule2
Send an alert if file access is done to any of the following files:
```
/etc/cronttab
/etc/at.allow
/etc/at.deny
```

### Configuration
NA

### Applicability
Host

### Policy Engine
KubeArmor

### Action
Audit

