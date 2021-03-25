# Rules

## Rule1
Rule used to identify the attack...

### Configuration
Configuration in context to the rule ... For e.g, `Active Scanning` -> `Scanning IP blocks` might require the policy to check for n number of unique IP addresses before deciding on whether the system is under attack.
NA

### Applicability
Where is the rule applicable?
Host, Container

### Policy Engine
Who (which engine) enforces the rule? It is possible that multiple engines might enforce/audit the same rule.
Sample values: KubeArmor, Cilium, VAE, SPADE
KubeArmor

### Action
Audit, Enforce
