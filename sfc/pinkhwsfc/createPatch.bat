@echo off 
set T_FILENAME="TR_Pink Panther in Pink Goes to Hollywood (U).smc"
set S_FILENAME="Pink Panther in Pink Goes to Hollywood (U).smc"
set SCRIPTNAME="pinkhwsfc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips 
pause 
