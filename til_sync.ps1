
$src = "C:\Users\Gram\Desktop\Para\2 Area\TIL(Today I Leared)"
$dst = "C:\Users\Gram\Desktop\TIL-Public"

Write-Host "📂 복사 중: $src → $dst"
Copy-Item "$src\*" "$dst\" -Recurse -Force

Set-Location $dst
git add .
$now = Get-Date -Format "yyyy-MM-dd HH:mm"
git commit -m "🔄 TIL 자동 동기화: $now"
git push origin main  # or master
