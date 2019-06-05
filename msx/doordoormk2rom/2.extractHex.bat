@echo off
set T_FILENAME="TR_Doordoor Mk2 (1984) (Enix) (J).rom"
set SCRIPTNAME="doordoormk2rom"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
