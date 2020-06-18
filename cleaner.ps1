$filename = Read-Host 'Filename whos history we are clearning?'
$filenamebak = "$filename.bak"
cp $filename $filenamebak
git filter-branch --force --index-filter "git rm --cached --ignore-unmatch $filename" --prune-empty --tag-name-filter cat -- --all
git commit -m 'cleaning history'
git push origin --force --all
mv $filenamebak $filename
git add .
git commit -m 'cleanup'
git push origin --force --all
git push origin --force --tags