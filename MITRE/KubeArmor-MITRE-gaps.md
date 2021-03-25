# KubeArmor MITRE handling requirements

### Generic Rule Engine Gaps
1. Use of macros. It should be possible to support macros and use those macros
   in the rules. For e.g, `all_ziplike_processes = bzip2, tar, zip`. This could
   further be used in multiple rules.
2. Ability to support user-defined alert information.
3. Ability to support host-based rules based on NodeSelector labels.
4. It should be possible to include kernelspace and userspace rules together for e.g,
	* Check if a invoked process is linked to any compression lib: `(ps_name == listofbins) && ps_linkedso == (libbz2.* || libz.*)`
	* Check if the invoked process has a parent process which is `at | crond` ... for e.g, `(ps_name == *) && ps_parent == (at | crond)`
5. Use rate-limited conditions ... {TODO: Needs more thoughts}


In certain cases, traffic accounting is needed over a longer period of time to
infer any attacks. For e.g, with ICMP based attacks the ICMP accounting has to
be handled. This is also the case with DNS based attacks which requires
accounting to be handled over a period of time to deduce any attack
posssibility.

