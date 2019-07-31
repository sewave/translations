@echo off
set T_FILENAME="TR_Battle Out Run (E) [!].sms"
set SCRIPTNAME="battleoutrunsms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
