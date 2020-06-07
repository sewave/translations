@echo off
set T_FILENAME="TR_Jajamaru no Daibouken (Japan).nes"
set SCRIPTNAME="jajamarunodaiboukennes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex FAC0:20
pause
