@echo off
chcp 65001 > nul

REM 경로 설정
set SRC=C:\Users\Gram\Desktop\Para\2 Area\TIL(Today I Leared)
set DST=C:\Users\Gram\Desktop\TIL-Public

echo 📂 복사 중: %SRC% → %DST%
xcopy "%SRC%\*" "%DST%\" /E /Y /I

REM 날짜 가져오기
for /f %%i in ('powershell -command "Get-Date -Format yyyy-MM-dd_HH-mm"') do set NOW=%%i

cd /d "%DST%"
git add .
git commit -m "TIL sync %NOW%"
git push origin main

pause
