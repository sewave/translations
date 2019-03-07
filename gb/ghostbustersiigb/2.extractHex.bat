@echo off
set T_FILENAME="TR_Ghostbusters II (USA, Europe).gb"
set SCRIPTNAME="ghostbustersiigb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
