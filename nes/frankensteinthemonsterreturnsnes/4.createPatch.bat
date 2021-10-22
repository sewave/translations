@echo off
set T_FILENAME="TR_Frankenstein - The Monster Returns (USA).nes"
set S_FILENAME="Frankenstein - The Monster Returns (USA).nes"
set SCRIPTNAME="frankensteinthemonsterreturnsnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
