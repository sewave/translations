@echo off
set T_FILENAME="TR_Block Out (W) (REV01) [!].bin"
set SCRIPTNAME="blockoutsmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
