# Rules

## Rule1
Enforce rule to shutdown process which attempts to write to the `/proc/<pid>/maps` and `/proc/<pid>/mem` files.
[Ref exploit code](https://blog.gdssecurity.com/labs/2017/9/5/linux-based-inter-process-code-injection-without-ptrace2.html)

### Configuration
NA

### Applicability
Host

### Policy Engine
KubeArmor

### Action
Enforce

