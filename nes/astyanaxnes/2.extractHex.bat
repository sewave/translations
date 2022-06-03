@echo off
set T_FILENAME="TR_Astyanax (USA).nes"
set SCRIPTNAME="astyanaxnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 20810:380,202B0:20,20460:30
pause
