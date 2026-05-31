param([string]$msg = "Atualizacao do projeto")

git add .
git commit -m $msg
git push

Write-Host "Push concluido!"
