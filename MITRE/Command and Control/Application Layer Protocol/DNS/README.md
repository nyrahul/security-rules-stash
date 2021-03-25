# Rules
DNS tunneling exploits the DNS protocol to tunnel malware and other data
through a client-server model.

1. The attacker registers a domain, such as badsite.com. The domain’s name
   server points to the attacker’s server, where a tunneling malware program is
   installed.
2. The attacker infects a computer, which often sits behind a company’s
   firewall, with malware. Because DNS requests are always allowed to move in
   and out of the firewall, the infected computer is allowed to send a query to
   the DNS resolver. The DNS resolver is a server that relays requests for IP
   addresses to root and top-level domain servers.
3. The DNS resolver routes the query to the attacker’s command-and-control
   server, where the tunneling program is installed. A connection is now
   established between the victim and the attacker through the DNS resolver.
   This tunnel can be used to exfiltrate data or for other malicious purposes.
   Because there is no direct connection between the attacker and victim, it is
   more difficult to trace the attacker’s computer.
[ref](https://www.paloaltonetworks.com/cyberpedia/what-is-dns-tunneling)


## Rule1
Do DNS query accounting. If the size of the DNS communication payload exceeds
more that double the average DNS comm payload then raise an alert. This is a
stateful activity which means the audit/enforcement engine needs to track the
DNS req/rsp between the peers and subsequently use it for inference purpose.
Cilium currently keeps the map of the DNS req/rsp and thus may need to add
additional logic to detect such an attack. Another option is to use a ebpf
based accounting module to keep track of this.

### Configuration
NA

### Applicability
Host

### Policy Engine
Cilium

### Action
Audit
