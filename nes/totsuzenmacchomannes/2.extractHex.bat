@echo off
set T_FILENAME="TR_Totsuzen! Macchoman (Japan).nes"
set SCRIPTNAME="totsuzenmacchomannes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 170:30,5150:20,51B0:20,C140:10,C260:10,C2C0:20,5510:10,55D0:20
pause
