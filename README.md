# supabase-docker-reproduction

Reproduction for https://github.com/supabase/cli/issues/87

## How to use

```console
➜  supabase-docker-reproduction git:(main) ✗ ./run.sh
➜  supabase-docker-reproduction git:(main) ✗ ./build.sh && ./run.sh
Sending build context to Docker daemon  7.168kB
Step 1/6 : FROM mcr.microsoft.com/vscode/devcontainers/typescript-node:14
  ... snip ...
Successfully built 647df56781b5
Successfully tagged supabase-docker-reproduction:latest

Use 'docker scan' to run Snyk tests against images to find vulnerabilities and learn how to fix them
root ➜ /reproduction (master) $ supabase init
Finished `supabase init`.
root ➜ /reproduction (master ✗) $ supabase start
Error: Error response from daemon: OCI runtime create failed: container_linux.go:380: starting container process caused: process_linux.go:545: container init caused: rootfs_linux.go:76: mounting "/reproduction/supabase/.temp/userlist.txt" to rootfs at "/etc/pgbouncer/userlist.txt" caused: mount through procfd: not a directory: unknown: Are you trying to mount a directory onto a file (or vice-versa)? Check if the specified host path exists and is the expected type
root ➜ /reproduction (master ✗) $
```
