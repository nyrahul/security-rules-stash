# Rules
Adversaries may communicate using application layer protocols associated with
transferring files to avoid detection/network filtering by blending in with
existing traffic.

## Rule1
Zero-trust based network settings would avoid any process/container from
sending packets to an unknown destination.

### Configuration
NA

### Applicability
Host, Container

### Policy Engine
Cilium

### Action
Audit, Enforce
