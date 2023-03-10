@echo off
set T_FILENAME="TR_Bubsy II (USA, Europe).md"
set SCRIPTNAME="bubsyiismd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
