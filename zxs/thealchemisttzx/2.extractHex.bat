@echo off
set T_FILENAME="TR_The Alchemist.tzx"
set SCRIPTNAME="thealchemisttzx"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 4607:10
pause
