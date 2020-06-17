@echo off
set T_FILENAME="TR_Galaga '91 (J).gg"
set SCRIPTNAME="galaga91gg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 180A4:20,1E264:20
pause
