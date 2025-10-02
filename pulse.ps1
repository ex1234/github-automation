param([string]$Note = (Get-Date -Format "yyyy-MM-dd HH:mm:ss"))
if (-not (Test-Path ".pulse")) { New-Item -ItemType File -Path ".pulse" | Out-Null }
$Note | Out-File -FilePath ".pulse" -Append -Encoding utf8
git add .pulse
git commit -m "chore(pulse): $Note"
git push