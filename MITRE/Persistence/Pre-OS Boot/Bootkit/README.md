# Rules

## Rule1
Take a snapshot of MBR on agent installation and verify periodically.
```
#Take a snapshot of the MBR where /dev/nvme0n1 is the disk from which the machine booted.
$ dd if=/dev/nvme0n1 of=tmp1 bs=512 count=1

# How to identity the boot partition?
$ lsblk | grep boot
```

### Configuration
NA

### Applicability
Host

### Policy Engine
KubeArmor

### Action
Audit

