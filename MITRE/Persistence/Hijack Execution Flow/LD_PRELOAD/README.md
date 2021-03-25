# Rules

## Rule1
Check if the process is spawned with certain risky environment variables such
as `LD_PRELOAD`. Use of `LD_PRELOAD` implies that the preloaded dynamic library
could intercept and hijack any library calls.

When the process is execed, the logic can check whether the env var for the
spawned process contains `LD_PRELOAD` by looking into `/proc/<pid>/environ`.

### Configuration
NA

### Applicability
Host

### Policy Engine
KubeArmor

### Action
Audit

