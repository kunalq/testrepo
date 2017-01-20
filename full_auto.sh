# usage:
#   ./full_auto branch_name optional_fog_text_suffix
#
git checkout master
git checkout -b u/kunalq/$1
git fetch origin
git rebase origin/master

# Make a change
FILENAME=fog$2.txt
echo "$(date)" > $FILENAME
git add $FILENAME
git commit -m "$FILENAME $(date)"

# Push it
BRANCH=`git rev-parse --abbrev-ref HEAD`
git push --set-upstream origin $BRANCH
