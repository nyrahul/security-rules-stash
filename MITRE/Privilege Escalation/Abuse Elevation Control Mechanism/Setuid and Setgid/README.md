# Rules

## Rule1
Audit processes spawned with s-bit set. In general, in k8s env, it is not
expected that the s-bit will be set for any process within the container.
Even on the host, there should not be any process with the s-bit set in context
of k8s env.

### Configuration
NA

### Applicability
Host, Container

### Policy Engine
KubeArmor

### Action
Audit, Enforce

