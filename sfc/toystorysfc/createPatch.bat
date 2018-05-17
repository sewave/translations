@echo off 
set T_FILENAME="TR_Toy Story (U) [!].smc"
set S_FILENAME="Toy Story (U) [!].smc"
set SCRIPTNAME="toystorysfc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips 
pause 
