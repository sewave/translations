@echo off 
set T_FILENAME="TR_Toy Story (U) [!].smc"
set SCRIPTNAME="toystorysfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause 
