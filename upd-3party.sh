#!/bin/bash

# moving packages to 3rd party repository
mv ./3rdparty-x86_64/* ../axyl-repo-3party/x86_64/

# update repository, remove .old & push changes
(cd ../axyl-repo-3party/x86_64/; repo-add axyl-repo-3party.db.tar.gz *.pkg.tar.zst; rm -rf *.old; git add .; git commit -m "Update 3rd Party Repository"; .tkn; git push -u origin master)
