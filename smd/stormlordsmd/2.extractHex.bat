@echo off
set T_FILENAME="TR_Stormlord (U) [!].bin"
set SCRIPTNAME="stormlordsmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
