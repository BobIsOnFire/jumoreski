## Gentoo/Portage

### Using eselect repository - preferred method

```
# eselect repository enable underworld
# emerge --sync
# emerge -a games-misc/jumoreski
```

### Using layman

```
# layman -a underworld
# layman -s underworld
# emerge -a games-misc/jumoreski
```

## Configuration

After merging the ebuild you will have a file `jumoreski.sh` in the `/etc/profile.d` directory.
If you use shell, that don't source files from this directory (e.g. zsh), you will need to
add sourcing of this file manually into your rc-file in order to get access to functions:

```bash
source /etc/profile.d/jumoreski.sh
```
