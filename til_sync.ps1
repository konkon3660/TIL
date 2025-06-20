# 경로 설정d
chcp 65001 > $null
$src = 'C:\Users\Gram\Desktop\Para\2 Area\TIL(Today I Leared)'
$dst = 'C:\Users\Gram\Desktop\TIL-Public'

# 1. 대상 폴더로 파일 복사
Write-Host "📂 복사 중: $src → $dst"
Copy-Item "$src\*" "$dst\" -Recurse -Force

# 2. Git 커밋 & 푸시
Set-Location $dst
git add .
$now = Get-Date -Format "yyyy-MM-dd HH:mm"
git commit -m "🔄 TIL 자동 동기화: $now"
git push origin main

pause
