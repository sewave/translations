@echo off
set T_FILENAME="TR_Super Off-Road (E) [!].sms"
set SCRIPTNAME="superoffroadsms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 1030D:200,1070D:200,10C4D:100,1116D:80,1330B:200,134C5:200
pause
