@echo off
set T_FILENAME="TR_Star Trek - Strategic Operations Simulator (USA).col"
set S_FILENAME="Star Trek - Strategic Operations Simulator (USA).col"
set SCRIPTNAME="startrekstrategicoperationssimulatorcol"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
