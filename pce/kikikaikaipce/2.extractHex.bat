@echo off
set T_FILENAME="TR_Kiki Kaikai (Japan).pce"
set SCRIPTNAME="kikikaikaipce"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 8166:8,816F:8,8178:8,8181:8,818E:8,8197:8
pause
