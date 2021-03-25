# Rules
Adversaries may make use of Domain Generation Algorithms (DGAs) to dynamically
identify a destination domain for command and control traffic rather than
relying on a list of static IP addresses or domains.

## Rule1
One way to handle this is to use DNS resolution accounting system. Every DNS
resolution should result in an alert event to the backend. The backend can then
aggregate these events and possibly run post-processing actions such as if the
number of DNS resolutions in a given time frame is more than a threshold then
it generates an alert.

Post-processing action is: Check the number of DNS resolutions in past 10 hours
and if the number is more than the average of past week then raise an alert.

### Configuration
NA

### Applicability
Host, Container

### Policy Engine
Cilium

### Action
Audit
