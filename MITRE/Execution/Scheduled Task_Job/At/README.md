# Rules

## Rule1
Send an alert if process `at` is invoked. These processes operate at host level and are used for periodic execution.

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

