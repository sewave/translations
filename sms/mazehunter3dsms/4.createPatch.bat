@echo off
set T_FILENAME="TR_Maze Hunter 3D (U) [!].sms"
set S_FILENAME="Maze Hunter 3D (U) [!].sms"
set SCRIPTNAME="mazehunter3dsms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
