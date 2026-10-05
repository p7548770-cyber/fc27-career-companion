@echo off
setlocal
cd /d "%~dp0"
copy /b /y "FC27-Career-Companion-Setup.part01"+"FC27-Career-Companion-Setup.part02"+"FC27-Career-Companion-Setup.part03"+"FC27-Career-Companion-Setup.part04"+"FC27-Career-Companion-Setup.part05" "FC27-Career-Companion-Setup-1.1.0-beta.6.exe" >nul
if errorlevel 1 (
  echo Zusammenfuegen fehlgeschlagen.
  if /i not "%~1"=="/nopause" pause
  exit /b 1
)
echo Fertig: FC27-Career-Companion-Setup-1.1.0-beta.6.exe
if /i not "%~1"=="/nopause" pause
exit /b 0
