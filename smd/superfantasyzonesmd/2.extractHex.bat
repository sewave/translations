@echo off
set T_FILENAME="TR_Super Fantasy Zone (Europe).md"
set SCRIPTNAME="superfantasyzonesmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
