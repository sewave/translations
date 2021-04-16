@echo off
set T_FILENAME="TR_World Court Tennis (USA).pce"
set SCRIPTNAME="worldcourttennispce"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 1EDA0:260,1F200:140
pause
