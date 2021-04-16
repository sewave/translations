@echo off
set T_FILENAME="TR_Mega Qbert.bin"
set SCRIPTNAME="megaqbertsmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
