@echo off
set T_FILENAME="TR_Batman Returns (USA).nes"
set SCRIPTNAME="batmanreturnsnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 43410:A0,202C0:10,207A0:40,20580:70,20260:10
pause
