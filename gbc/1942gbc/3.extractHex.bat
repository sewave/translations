@echo off
set T_FILENAME="TR_1942 (U) [C][!].gbc"
set SCRIPTNAME="1942gbc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
