@echo off
set T_FILENAME="TR_Ikki (Japan).nes"
set SCRIPTNAME="ikkines"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 51C0:10,5290:20,4950:30,4FF0:10
pause
