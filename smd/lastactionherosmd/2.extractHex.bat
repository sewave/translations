@echo off
set T_FILENAME="TR_Last Action Hero (U) [!].bin"
set SCRIPTNAME="lastactionherosmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
