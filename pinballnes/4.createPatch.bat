@echo off
set T_FILENAME="TR_Pinball (JU) [!].nes"
set S_FILENAME="Pinball (JU) [!].nes"
set SCRIPTNAME="pinballnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
