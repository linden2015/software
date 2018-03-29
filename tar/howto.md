# Compress files and folders

* `tar --create --checkpoint=1000 directory/ | gzip > output-file.tar.gz`

# Extract archive

* `gunzip < input-file.tar.gz | tar --extract`
