TO CREATE AND START SERVICE FOR KEYBORD REMAPS:

systemctl --user daemon-reload
systemctl --user enable --now xremap.service

# Check status
systemctl --user status xremap
