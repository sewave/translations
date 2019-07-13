@echo off
set T_FILENAME="TR_Alfred Chicken (U) [!].nes"
set SCRIPTNAME="alfredchickennes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
