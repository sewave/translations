@echo off
set T_FILENAME="TR_Assault City - Pad Version (E) [!].sms"
set SCRIPTNAME="assaultcitypadversionsms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 3F7FE-3FE1E,1FD60-1FF60
pause
