@echo off
set T_FILENAME="TR_Rolling Thunder 2 (U) [c][!].bin"
set SCRIPTNAME="rollingthunder2smd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
