@echo off

echo 'nerd' > test.txt
git add .
git commit -m "Daily commit"
git push origin main

echo "Commit complete"
