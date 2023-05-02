# Zarf Alpine Package Builder

This project provides the development environment (using [Visual Studio Code Development Containers](https://code.visualstudio.com/docs/devcontainers/containers)) and configuration files necessary to add [Zarf](https://zarf.dev/) to the Alpine Package Repository.

## Building the package

In order to build this package, you must run the following command in your DevContainer shell. The `F` flag forces the build command to be run as root, and the `r` flag specifies that build dependencies should be built recursively:

```bash
abuild -Fr
```

## Running/testing the package

To install your freshly packaged Zarf CLI using `apk`, run the following as root:

```bash
apk add --repository /root/packages/workspaces zarf
```

## Contributing to aports

Copy the build artifacts to the aports git submodule:

```bash
cp APKBUILD aports/testing/zarf/APKBUILD
```

When committing the changes, adhere to the [following commit message format](https://gitlab.alpinelinux.org/alpine/aports/-/blob/506165983e240263c80aa664f8df3c72cf6d63f6/COMMITSTYLE.md). Example below:

```git
testing/zarf: upgrade to version x.x.x # this will be the subject line, followed by a blank line

https://github.com/defenseunicorns/zarf # project homepage
DevSecOps for Air Gap & Limited-Connection Systems # one line description
```
