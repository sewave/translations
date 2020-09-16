@echo off
set T_FILENAME="TR_Spy Hunter (USA).nes"
set SCRIPTNAME="spyhunternes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex FD10:10
pause
