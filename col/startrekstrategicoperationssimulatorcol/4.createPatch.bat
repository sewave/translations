@echo off
set T_FILENAME="TR_Star Trek - Strategic Operations Simulator (USA).col"
set S_FILENAME="Star Trek - Strategic Operations Simulator (USA).col"
set SCRIPTNAME="startrekstrategicoperationssimulatorcol"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
