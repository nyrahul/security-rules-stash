# STIGs by Accuknox

STIGs contain application or container specific rulesets. There are two aspects of STIGs verification.
1. Periodic checks: STIGs provide a guideline on what the file permissions
   should be, what ports the process should be listening on and what the
   configuration of the containers must be. This can be verified either using
   external checks, pretty much the way kube-bench verifies for a set of
   conditions based on the k8s configuration.
2. Dynamic Runtime checks: Lot of cases require runtime checks. For e.g., do
   not allow any other process other than postgres to modify the pgsql audit
   logs. This cannot be handled through periodic checks and must be enforceable
   during container runtime.
3. Internal handler: There are certain rules which cannot be checked
   externally i.e., one needs to execute something in the context of the
   container which results in some output which needs to be validated. For
   e.g., checking whether pgsql audit logs are truly enabled. As per rule
   "SV-233512r617333_rule", the verifier requires to execute a create-table
   pgsql command which will result in permission denied in the audit logs. Thus
   to verify this rule one needs to execute a pgsql query to validate the audit
   logs. This requires that the pgsql access be enabled for the verifier i.e.,
   an external daemon such as KubeArmor cannot verify such rules.

## 
