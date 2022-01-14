@echo off
set T_FILENAME="TR_Super Volleyball (USA).pce"
set SCRIPTNAME="supervolleyballpce"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 25A00:600,28600:100,29D60:600,2D980:20,2C480:700,2DF80:200,3F800:400
pause
