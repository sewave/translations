@echo off
set T_FILENAME="Star Trek - Strategic Operations Simulator (USA).col"
set SCRIPTNAME="startrekstrategicoperationssimulatorcol"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
