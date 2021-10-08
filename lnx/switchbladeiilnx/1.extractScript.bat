@echo off
set T_FILENAME="Switchblade II (USA, Europe).lnx"
set SCRIPTNAME="switchbladeiilnx"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
