# Rules

## Rule1
Linux has an API `syscall(long nrnum,
...)`[ref](https://linux.die.net/man/2/syscall) using which an attacker can
bypass libc APIs and directly invoke the syscall based on its number. If an
attempt is made to do so it can be used as an alert because usually the
processes depend on libc to make syscalls.

OpenBSD has [a way to identify the syscall
origination](https://lwn.net/Articles/806776/) and then limit access to it.
This could be the best enforcement technique but needs detailed analysis in the
context of Linux kernel.

### Configuration
NA

### Applicability
Host, Container

### Policy Engine
Kubearmor

### Action
Audit

