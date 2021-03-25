# Rules
An adversary may compress or encrypt data that is collected prior to exfiltration using 3rd party libraries. Many libraries exist that can archive data, including Python rarfile, libzip, and zlib.

## Rule1
Audit if the invoked process which is not part of standard bins (bzip2, zip,
rar, unrar, tar) is linked to any compression lib: `(ps_name != listofbins) &&
ps_linkedso == (libbz2.* || libz.*)`

This might still result in false positives since there are too many bins which
makes use of generic compression libs such as libz for data compression before
network transmission (for e.g, nginx, apache, etc).


### Configuration
NA

### Applicability
Host, Container

### Policy Engine
KubeArmor

### Action
Audit, Enforce

