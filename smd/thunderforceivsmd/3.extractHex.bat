@echo off
set T_FILENAME="TR_Thunder Force IV (E) [c][!].bin"
set SCRIPTNAME="thunderforceivsmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
