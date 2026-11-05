#!/usr/bin/env bash
# Deploy landing page ke GitHub Pages (butuh gh auth login dulu)
set -e
cd "$(dirname "$0")"
REPO_NAME="miftahul-huda-landing"
if ! gh auth status >/dev/null 2>&1; then
  echo "Login dulu: gh auth login"
  exit 1
fi
git init -q
git checkout -b main 2>/dev/null || git checkout main
git add 06-landing-page.html
git commit -m "landing page" 2>/dev/null || true
gh repo create "$REPO_NAME" --public --source=. --remote=origin --push 2>/dev/null || git push -u origin main
# rename file to index.html for Pages
cp 06-landing-page.html index.html
git add index.html && git commit -m "index" && git push
gh api -X POST repos/:owner/$REPO_NAME/pages -f source='{"branch":"main","path":"/"}' 2>/dev/null || true
echo "Selesai. URL: https://$(gh api user -q .login).github.io/$REPO_NAME/"
