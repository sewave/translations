@echo off
set T_FILENAME="TR_Janggun-ui Adeul (Korea) (Unl) [T+ENG].nes"
set S_FILENAME="Janggun-ui Adeul (Korea) (Unl).nes"
set SCRIPTNAME="janggunuiadeulnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
