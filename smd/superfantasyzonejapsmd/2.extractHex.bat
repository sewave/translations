@echo off
set T_FILENAME="TR_Super Fantasy Zone (Japan).md"
set SCRIPTNAME="superfantasyzonejapsmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
