# Specify what properties must be passed to the unit, spaces need to be escaped just like shell,
# and newlines must be separated with a backslash. Refer to the man pages systemd.directives(7),
# systemd.service(5), systemd.resource-control(5), and systemd.exec(5) for information on how
# directives accept values.

options=(
## Environment
# -p Environment= \
# -p EnvironmentFile= \
# -p UnsetEnvironment= \
## Use for building on offline resource bundles
# -p RootDirectory=/mnt/exherbo \
# -p RootImage=/root/exherbo-build12.img \
# -p MountAPIVFS=yes \
# -p BindPaths= \
# -p BindReadOnlyPaths= \
## A few useful resource limits
# -p LimitCPU= \
# -p OOMScoreAdjust= \
# -p Nice= \
# -p CPUSchedulingPolicy= \
# -p CPUSchedulingPriority= \
# -p IOSchedulingClass= \
# -p IOSchedulingPriority= \
## Sandboxing (be careful here)
# -p ProtectHome=1 \
# -p ReadWritePaths= \
# -p ReadOnlyPaths= \
# -p InaccessiblePaths= \
# -p PrivateTmp=1 \
# -p PrivateNetwork= \
# -p ProtectKernelTunables=1 \
# -p ProtectKernelModules=1 \
# -p ProtectControlGroups=1 \
# -p RestrictAddressFamilies= \
# -p RestrictNamespaces= \
# -p MemoryDenyWriteExecute= \
# -p RemoveIPC= \
# -p SystemCallFilter= \
# -p StandardInput= \
# -p StandardOutput= \
# -p StandardError=inherit \
# -p SyslogIdentifier= \
##  Misc
# -p CPUAffinity= \
# -p CPUQuota=100% \
# -p CPUWeight=100 \
# -p IOWeight=100 \
## Remove to set default slice
# -p Slice=zebrakow.slice
)