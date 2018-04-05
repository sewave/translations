@echo off
set T_FILENAME="TR_Battlemaniacs (B) [!].sms"
set SCRIPTNAME="battlemaniacssms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
