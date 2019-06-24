@echo off
set T_FILENAME="TR_Chicago Syndicate (U) [!].gg"
set SCRIPTNAME="chicagosyndicate"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
