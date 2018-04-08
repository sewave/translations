@echo off
set T_FILENAME="TR_Daze Before Christmas (E).smc"
set S_FILENAME="Daze Before Christmas (E).smc"
set SCRIPTNAME="dazebeforechristmassfc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
