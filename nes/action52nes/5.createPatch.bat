@echo off
set T_FILENAME="TR_Action 52 (Active Enterprises) (REVA) [!].nes"
set S_FILENAME="Action 52 (Active Enterprises) (REVA) [!].nes"
set SCRIPTNAME="action52nes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
