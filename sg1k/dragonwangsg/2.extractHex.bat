@echo off
set T_FILENAME="TR_Dragon Wang (SG-1000) (Ver-A).sg"
set SCRIPTNAME="dragonwangsg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 6D23:50,
pause
