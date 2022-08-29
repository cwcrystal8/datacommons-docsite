#!/usr/bin/env fish
rm -r docs/*
bundle exec jekyll build --unpublished
cp -r _site/* docs/
find ./docs -type f -exec gsed -i 's$="\/$="\/datacommons-docsite\/$g' {} \;
git add .
git commit -m "build"
git push