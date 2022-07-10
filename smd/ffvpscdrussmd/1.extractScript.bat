@echo off
set T_FILENAME="FFV_PSCDRus.bin"
set SCRIPTNAME="ffvpscdrussmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
