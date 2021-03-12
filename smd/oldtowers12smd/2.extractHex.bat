@echo off
set T_FILENAME="TR_ot12.bin"
set SCRIPTNAME="oldtowers12smd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex A9C08:100
pause
