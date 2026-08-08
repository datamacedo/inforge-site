# Script para remover o SVG do pipeline e a seção "SOBRE O BLOG"

$caminhoArquivo = "C:\Users\bruno\Documents\PROJETOS\inforge\blog.html"
$conteudo = Get-Content $caminhoArquivo -Raw -Encoding UTF8

# Remover o SVG inteiro (desde <!-- PIPELINE ENERGIZADO --> ate o fechamento </svg>)
$conteudo = $conteudo -replace '(?s)<!-- PIPELINE ENERGIZADO -->.*?</svg>', ''

# Remover a seção "SOBRE O BLOG" inteira
$conteudo = $conteudo -replace '(?s)<!-- SOBRE O BLOG -->.*?</section>', ''

# Remover linhas em branco excessivas
$conteudo = $conteudo -replace '(?s)\n\s*\n\s*\n', "`n`n"

# Salvar o arquivo atualizado
Set-Content $caminhoArquivo $conteudo -Encoding UTF8

Write-Host "[OK] Arquivo atualizado! SVG e secao removidos." -ForegroundColor Green
Write-Host "[INFO] Proximo passo: rodar o deploy.ps1" -ForegroundColor Yellow
