git add .
$comment = Read-Host 'Commit comment?'
git commit -m "$comment"
git push
