# zebrakow
A job scheduler for Paludis. It wraps `cave` in it's own transient unit and keeps track of jobs. It also supports runtime introspection and controlling how much resources a job gets, and how the job gets sandboxed on the system through slices and profiles. zebrakow is simple, and robust, and can be used to control a local box, a container, an offline resource, or a remote server, offloading builds to them. It is currently under heavy development, hence shouldn't be used for anything more than testing befor v1 is released.

## Documentation
See the wiki: https://github.com/bl33pbl0p/zebrakow/wiki/Introduction

## Dependencies
systemd >= 236
tree
bash >= 4.x
