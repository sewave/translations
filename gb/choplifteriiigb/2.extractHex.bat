@echo off
set T_FILENAME="TR_Choplifter III (Europe).gb"
set SCRIPTNAME="choplifteriiigb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
