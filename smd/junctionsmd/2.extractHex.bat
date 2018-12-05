@echo off
set T_FILENAME="TR_Junction (JU) [!].bin"
set SCRIPTNAME="junctionsmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
