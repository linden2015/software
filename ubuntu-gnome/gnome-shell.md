# Integrate application into menu global search

Example file:

    [Desktop Entry]
    Type=Application
    Encoding=UTF-8
    Name=Zed
    Comment=Text editor
    Exec=/home/linden/Software/zed/zed-bin
    Icon=/home/linden/Software/zed/Zed.png
    Terminal=false

Place in either:

 * User: `~/.local/share/applications`
 * Global: `/usr/share/applications`

---

Sources:

 * [gnome.org](https://developer.gnome.org/integration-guide/stable/desktop-files.html.en)