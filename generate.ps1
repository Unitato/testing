$target = [System.IO.Path]::GetRandomFileName()
$content1 = "this is the secret message"
$content2 = "i have removed the secret message"
$content3 = "nothing to see here..."
$content4 = "the forth commit"

function pushtomaster($comment){
	git add .
	#$comment = Read-Host 'Commit comment?'
	git commit -m "$comment"
	git push
}

$content1 | out-file -encoding utf8 $target
pushtomaster("adding a secret by accident")

$content2 | out-file -encoding utf8 $target
pushtomaster("deleting the secret")

$content3 | out-file -encoding utf8 $target
pushtomaster("third commit comment")

$content4 | out-file -encoding utf8 $target
pushtomaster("i forgot why i was here....")