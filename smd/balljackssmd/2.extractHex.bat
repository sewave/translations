@echo off
set T_FILENAME="TR_Ball Jacks (JE) [c][!].bin"
set SCRIPTNAME="balljackssmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
