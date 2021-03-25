# Rules

## Rule1
Audit following two syscalls to check if any kernel module is been dynamically inserted.
```
init_module()
finit_module()
```
Similarly, execution of following commands could be audited.
```
modprobe
insmod
lsmod
rmmod
modinfo
```
One challenge is that this auditing should be enabled before any other module
is started. One way to handle it could be to do kernel module accounting and
report any updates to the kernel modules.

### Configuration
NA

### Applicability
Host

### Policy Engine
KubeArmor

### Action
Audit

