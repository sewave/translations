@echo off
set T_FILENAME="TR_Star Trek - Strategic Operations Simulator (USA).col"
set SCRIPTNAME="startrekstrategicoperationssimulatorcol"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
