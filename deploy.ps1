# Script para fazer commit e push automaticamente
# Uso: .\deploy.ps1 "Sua mensagem de commit aqui"

param(
    [Parameter(Mandatory=$true)]
    [string]$mensagem = "Atualização do projeto"
)

# Validar se estamos em um repositório git
if (-not (Test-Path .git)) {
    Write-Host "❌ Erro: Não estamos em um repositório Git" -ForegroundColor Red
    exit 1
}

Write-Host "🔄 Iniciando deploy..." -ForegroundColor Cyan
Write-Host "📝 Mensagem: $mensagem" -ForegroundColor Yellow

# Adicionar todas as mudanças
Write-Host "📦 Adicionando arquivos..." -ForegroundColor Cyan
git add .

# Verificar se há mudanças para commit
$status = git status --porcelain
if (-not $status) {
    Write-Host "✅ Nada para fazer - repositório está atualizado" -ForegroundColor Green
    exit 0
}

# Fazer commit
Write-Host "💾 Fazendo commit..." -ForegroundColor Cyan
git commit -m $mensagem

if ($LASTEXITCODE -ne 0) {
    Write-Host "❌ Erro ao fazer commit" -ForegroundColor Red
    exit 1
}

# Fazer push
Write-Host "🚀 Fazendo push para GitHub..." -ForegroundColor Cyan
git push

if ($LASTEXITCODE -eq 0) {
    Write-Host "✅ Deploy concluído com sucesso!" -ForegroundColor Green
    Write-Host "🌐 As mudanças estão sendo publicadas no Vercel..." -ForegroundColor Green
} else {
    Write-Host "❌ Erro ao fazer push" -ForegroundColor Red
    exit 1
}
