# Rules
Adversaries may search for private key certificate files on compromised systems
for insecurely stored credentials. Common key and certificate file extensions
include: .key, .pgp, .gpg, .ppk., .p12, .pem, .pfx, .cer, .p7b, .asc.

## Rule1
Audit access to any files ending with extensions (.key, .pgp, .gpg, .ppk.,
.p12, .pem, .pfx, .cer, .p7b, .asc).  This rule alone might be insufficient
since it will generate false alerts. {TODO: Is there any other heuristic that
can be added here?}

### Configuration
NA

### Applicability
Host, Container

### Policy Engine
KubeArmor

### Action
Audit
