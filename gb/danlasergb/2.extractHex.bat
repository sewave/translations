@echo off
set T_FILENAME="TR_Dan Laser (Sachen) [!].gb"
set SCRIPTNAME="danlasergb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
