# Rules
VDSO hijacking involves redirecting calls to dynamically linked shared
libraries. Memory protections may prevent writing executable code to a process
via Ptrace System Calls. However, an adversary may hijack the syscall interface
code stubs mapped into a process from the vdso shared object to execute
syscalls to open and map a malicious shared object. This code can then be
invoked by redirecting the execution flow of the process via patched memory
address references stored in a process' global offset table (which store
absolute addresses of mapped library functions).

## Rule1
Disable use of ptrace() syscall.

### Configuration
NA

### Applicability
Host

### Policy Engine
KubeArmor

### Action
Audit, Enforce

