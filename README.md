crane
=====

`crane` is a thin wrapper around Docker's CLI that simplifies enabling
SSH agent forwarding on Docker containers when using Docker on OS X.

### Requirements
- `boot2docker`

### Usage

You can use `crane` in the same way as you would normally use `docker`.
For instance, `crane ps -a` will generate the same output as
`docker ps -a`.

The only difference is that `crane` accepts the `--ssh-agent-forwarding`
flag when running `crane run`. When using the `--ssh-agent-forwaring`
flag, running `ssh-add -l` on the container should generate the same
output as running `ssh-add -l` locally.


### Test

This repository ships with a `Dockerfile` that can be used to build
a `debian:7.4` image that comes with `openssh-server` installed on
it. Run `crane build -t crane-test .` to build the image.

Once built, add one of your SSH keys to your local SSH agent (i.e.
`ssh-add ~/.ssh/<name-of-your-ssh-key>`).

If you now run `ssh-add -l` and
`crane run --rm --name test --ssh-agent-forwarding crane-test ssh-add -l`,
you should get the same result.


