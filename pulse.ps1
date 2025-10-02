param([string]\ = (Get-Date -Format 'yyyy-MM-dd HH:mm:ss'))
if (-not (Test-Path '.pulse')) { New-Item -ItemType File -Path '.pulse' | Out-Null }
\ | Out-File -FilePath '.pulse' -Append
git add .pulse
git commit -m "chore(pulse): \"
git push
