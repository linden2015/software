# Keyboard shortcuts to open Chrome for a specific Google account

Steps:

* Find which profiles belong to which accounts
    * cd `~/.config/google-chrome`
    * `find -name Preferences -print0 | xargs --null --max-args=1 ack '"profile".*"name":"(.+?)"' --output='$1' --with-filename`
* Create keyboard shortcuts in Gnome
    * Settings > Keyboard > Shortcuts > Custom Shortcuts
    * For each profile add:
        * Name: Profile name
        * Command: `google-chrome --profile-directory="<name-of-directory>"`
            * Example: `google-chrome --profile-directory="Profile 1"`
        * Note that `Default` is used aside from `Profile <num>`
    * For each custom shortcut add a key combination
        * Example: Control+Super+<first-letter-of-account>
