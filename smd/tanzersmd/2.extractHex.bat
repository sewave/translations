@echo off
set T_FILENAME="TR_Tanzer.bin"
set SCRIPTNAME="tanzersmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
