@echo off
set T_FILENAME="TR_Addams Family, The (World).gg"
set SCRIPTNAME="addamsfamilythegg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
