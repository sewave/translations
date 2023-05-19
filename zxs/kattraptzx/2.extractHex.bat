@echo off
set T_FILENAME="TR_Kat Trap.tzx"
set SCRIPTNAME="kattraptzx"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 2BAD:20,2CAD:30
pause
