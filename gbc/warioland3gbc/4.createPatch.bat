@echo off
set T_FILENAME="TR_Wario Land 3 (World) (En,Ja).gbc"
set S_FILENAME="Wario Land 3 (World) (En,Ja).gbc"
set SCRIPTNAME="warioland3gbc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
