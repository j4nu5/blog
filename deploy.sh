#!/usr/bin/env bash

# Require a clean working tree, including submodules.
require_clean_working_tree () {
    # Update the index
    git update-index -q --refresh

    if [[ -n $(git status --porcelain --ignore-submodules) ]]
    then
        echo -e >&2 "\033[0;31mWorking tree is not clean. Quitting...\033[0m"
        exit 1
    fi
}


## main
require_clean_working_tree
revision=`git rev-parse HEAD`
commit_subject="Rebuild site on `date`"
commit_body="For revision ${revision}"

# Build the site.
hugo --minify

# Add published site changes to git.
cd public
git add .
git commit -m "$commit_subject" -m "$commit_body"

echo -e "\033[0;32mDeploying updates to GitHub...\033[0m"
git push origin main

# Come back to 'source'.
echo -e "Updating source repo..."
cd ..
git add .
git commit -m "$commit_subject" -m "$commit_body"
git push origin main
