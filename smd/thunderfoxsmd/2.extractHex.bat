@echo off
set T_FILENAME="TR_Thunder Fox (U) [c][!].bin"
set SCRIPTNAME="thunderfoxsmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
