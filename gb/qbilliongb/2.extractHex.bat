@echo off
set T_FILENAME="TR_Q Billion (U) [!].gb"
set SCRIPTNAME="qbilliongb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
