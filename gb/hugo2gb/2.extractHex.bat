@echo off
set T_FILENAME="TR_Hugo 2 (Germany).gb"
set SCRIPTNAME="hugo2gb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
