@echo off
set T_FILENAME="TR_The Evil Dead.tzx"
set SCRIPTNAME="theevildeadtzx"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 1E6E:18,1F6E:20
pause
