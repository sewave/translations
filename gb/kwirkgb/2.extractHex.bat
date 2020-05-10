@echo off
set T_FILENAME="TR_Kwirk (UE) [!].gb"
set SCRIPTNAME="kwirkgb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 5C60:50,6CD0:18,6E38:50,6D58:10
pause
