@echo off
set T_FILENAME="TR_Fantasy Zone 2 - The Teardrop of Opa-Opa (J) [!].nes"
set S_FILENAME="Fantasy Zone 2 - The Teardrop of Opa-Opa (J) [!].nes"
set SCRIPTNAME="fantasyzone2theteardropofopaopanes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
