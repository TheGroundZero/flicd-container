# Flic daemon container

Container for running the [Flic daemon][flicd] using [Podman Quadlet][quadlet].


To run the container

- Copy `flicd.container` and `flicd.volume` to `$HOME/.config/containers/systemd/` and modify as needed.
- Call `systemctl --user daemon-reload` to inform systemd of these new files
- Start the container using `systemctl --user start flicd.service`
- Enable auto-start via `systemctl --user enable flicd.service`


[flicd]: https://github.com/50ButtonsEach/fliclib-linux-hci "50ButtonsEach/fliclib-linux-hci"
[quadlet]: https://www.redhat.com/sysadmin/quadlet-podman "Make systemd better for Podman with Quadlet"
