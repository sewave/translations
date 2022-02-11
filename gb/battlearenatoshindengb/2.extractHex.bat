@echo off
set T_FILENAME="TR_Battle Arena Toshinden (USA) (SGB Enhanced).gb"
set SCRIPTNAME="battlearenatoshindengb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
