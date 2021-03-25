# Rules
Adversaries may disable or modify system firewalls in order to bypass controls
limiting network usage. Changes could be disabling the entire mechanism as well
as adding, deleting, or modifying particular rules.

## Rule1
Audit following processes which generate firewall rules.
```
iptables
ebtables
```
Similarly, netfilter kprobes could be monitored to detect addition of netfilter rules through any other non-standard bins.
Exclusions should be made for docker, k8s processess (such as kube-proxy) who depend on creating these rules.

### Configuration
NA

### Applicability
Host, Container

### Policy Engine
KubeArmor

### Action
Audit

