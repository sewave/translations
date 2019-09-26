@echo off
set T_FILENAME="TR_Shanghai (U) [!].gb"
set SCRIPTNAME="shanghaigb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 1DB5:300
pause
