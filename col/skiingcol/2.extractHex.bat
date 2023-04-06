@echo off
set T_FILENAME="TR_Skiing (1986) (Telegames).col"
set SCRIPTNAME="skiingcol"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
