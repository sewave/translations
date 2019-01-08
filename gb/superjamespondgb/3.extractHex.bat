@echo off
set T_FILENAME="TR_Super James Pond (E) [!].gb"
set SCRIPTNAME="superjamespondgb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
