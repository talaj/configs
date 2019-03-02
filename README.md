configs
=======

## Vim related links:

http://sontek.net/blog/detail/turning-vim-into-a-modern-python-ide

## Start X on tty10

`.profile`:

```sh
if [ -z "$DISPLAY" ] && [ "$(tty)" = "/dev/tty10" ]; then
    startx
    exit
fi
```
