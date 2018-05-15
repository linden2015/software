# Archive from one directory to another

* `rsync --archive --recursive --verbose [--exclude='<pattern>'] [--dry-run] source-folder/ destination-folder`

Note:

* The trailing slash on the source folder indicates the contents of the folder
* Example pattern: `keys/`
