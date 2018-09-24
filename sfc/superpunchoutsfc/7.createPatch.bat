@echo off
set T_FILENAME="TR_Super Punch-Out!! (U) [!].smc"
set S_FILENAME="Super Punch-Out!! (U) [!].smc"
set SCRIPTNAME="superpunchoutsfc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
