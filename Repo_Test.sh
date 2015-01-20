#!/bin/bash
#GIT_SSL_NO_VERIFY=true git clone https://github.com/vjvikrant/MY-REPO.git /h/test_Repo2
git fetch --all
git rebase
git checkout master
mv /h/target/*.* /h/test_Repo2/
git add *.*
git commit -a
git push origin master
echo "Enter the tag name"
read tag_name
git tag "$tag_name"
git push origin "$tag_name"



