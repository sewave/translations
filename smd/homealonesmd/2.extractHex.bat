@echo off
set T_FILENAME="TR_Home Alone (U) [!].bin"
set SCRIPTNAME="homealonesmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
