#!/usr/bin/env bash

# Require a clean working tree, including submodules.
require_clean_working_tree () {
    # Update the index
    git update-index -q --refresh

    if [[ -n $(git status --porcelain) ]]
    then
        echo -e >&2 "\033[0;31mWorking tree is not clean. Quitting...\033[0m"
        exit 1
    fi
}


## main
require_clean_working_tree
revision=`git rev-parse HEAD`

# Build the site.
hugo

# Add published site changes to git.
cd public
git add .
msg="Rebuilt site on `date`\n\nFor revision ${revision}"
git commit -m "$msg"

echo -e "\033[0;32mDeploying updates to GitHub...\033[0m"
git push origin master

# Come back to 'source'.
cd ..
git commit -am "$msg"
