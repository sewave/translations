@echo off
set T_FILENAME="TR_Battletoads (W) [!].bin"
set SCRIPTNAME="battletoadssmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
