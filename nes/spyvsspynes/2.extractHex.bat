@echo off
set T_FILENAME="TR_Spy Vs Spy (U) [!].nes"
set SCRIPTNAME="spyvsspynes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 8F20:80
pause
