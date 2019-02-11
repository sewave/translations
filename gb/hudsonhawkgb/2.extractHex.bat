@echo off
set T_FILENAME="TR_Hudson Hawk (U) [!].gb"
set SCRIPTNAME="hudsonhawkgb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
