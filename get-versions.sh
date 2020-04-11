current=$(git log -1 --format="%H")
tags=$(git tag)
for tag in $tags; do
    git checkout $tag
    cp defs.tex "versions/defs-${tag}.tex"
done
git checkout $current
