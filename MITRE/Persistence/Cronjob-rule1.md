## CronJob is used to schedule jobs and as such, if accessed by an attacker, can be used to schedule execution of malicious code 

### Rule1
```
Allow only kubelet to edit/modify the crontab file
```

### Configuration
```
Nil
```

### Applicability
```
Host
```

### Policy Engine
```
KubeArmor
```

### Action
```
Enforce
```
