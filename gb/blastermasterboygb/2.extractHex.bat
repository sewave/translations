@echo off
set T_FILENAME="TR_Blaster Master Boy (U).gb"
set SCRIPTNAME="blastermasterboygb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 95E4:B0,C908:10,C978:10
pause
