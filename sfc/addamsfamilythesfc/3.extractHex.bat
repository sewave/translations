@echo off
set T_FILENAME="TR_Addams Family, The (U) [!].smc"
set SCRIPTNAME="addamsfamilythesfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
