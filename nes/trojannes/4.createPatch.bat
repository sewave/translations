@echo off
set T_FILENAME="TR_Trojan (USA).nes"
set S_FILENAME="Trojan (USA).nes"
set SCRIPTNAME="trojannes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
