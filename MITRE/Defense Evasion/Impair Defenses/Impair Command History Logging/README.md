# Rules

## Rule1
Audit file changes to `./bash_history` from non-bash parent process. This will
filter the processes which try to directly open the bash_history file.

### Configuration
NA

### Applicability
Host

### Policy Engine
KubeArmor

### Action
Audit

