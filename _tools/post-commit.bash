#!/bin/bash
set -e

if [ "x$(git rev-parse --abbrev-ref HEAD)" = xmaster ]; then
    TEMPDIR="$(mktemp -d -t '')"
    LC_CTYPE=en_US.utf-8 make html
    cp -R _build "$TEMPDIR"
    git checkout gh-pages
    cp -R "$TEMPDIR/_build/html/." .
    git add -A .
    git commit -m 'Update HTML'
    git checkout -
fi
