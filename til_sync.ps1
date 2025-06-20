chcp 65001 > $null
$OutputEncoding = [System.Text.Encoding]::UTF8

$src = 'C:\Users\Gram\Desktop\Para\2 Area\TIL(Today I Leared)'
$dst = 'C:\Users\Gram\Desktop\TIL-Public'

Write-Host "📂 복사 중: $src → $dst"
Copy-Item "$src\*" "$dst\" -Recurse -Force

Set-Location $dst
git add .

# 커밋 메시지를 UTF-8 파일로 저장
$now = Get-Date -Format "yyyy-MM-dd HH:mm"
$commitMessage = "🔄 TIL 자동 동기화: $now"
$msgFile = "$env:TEMP\til_commit_msg.txt"
$commitMessage | Out-File -FilePath $msgFile -Encoding UTF8

git commit -F $msgFile
git push origin main

pause
