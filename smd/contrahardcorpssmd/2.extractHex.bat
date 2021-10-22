@echo off
set T_FILENAME="TR_Contra - Hard Corps (USA, Korea).md"
set SCRIPTNAME="contrahardcorpssmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 129800:800
pause
