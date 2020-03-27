@echo off
set T_FILENAME="TR_Cadash (JU) [c][!].bin"
set SCRIPTNAME="cadashsmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
