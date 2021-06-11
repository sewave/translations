@echo off
set T_FILENAME="TR_DuckTales (USA).nes"
set SCRIPTNAME="ducktalesnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 4150:10,4190:10,4220:10,8EA0:10
pause
