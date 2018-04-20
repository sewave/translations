@echo off
set T_FILENAME="TR_Rolling Thunder 3 (U) [c][!].bin"
set SCRIPTNAME="rollingthunder3smd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
