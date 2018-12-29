@echo off 
set T_FILENAME="TR_Pink Panther in Pink Goes to Hollywood (U).smc"
set SCRIPTNAME="pinkhwsfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause 
