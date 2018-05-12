@echo off
set T_FILENAME="TR_Addams Family, The (U) [!].smc"
set S_FILENAME="Addams Family, The (U) [!].smc"
set SCRIPTNAME="addamsfamilythesfc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
