@echo off
set T_FILENAME="TR_Super Mario Bros (J) [p1].pce"
set SCRIPTNAME="supermariobrospce"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 4FD0:20,5110:10,5140:10,51A0:10,5200:30
pause
