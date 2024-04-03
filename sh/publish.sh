#!/bin/bash
rm -r public
hugo
ftp -n ftpupload.net <<END_SCRIPT
quote USER if0_34938495
quote PASS KGnbemfrVFYV7
cd htdocs
mdelete *
lcd local/
mput *
quit
END_SCRIPT

echo "Site publié avec succès !"