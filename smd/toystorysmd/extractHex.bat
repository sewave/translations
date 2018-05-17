@echo off 
set T_FILENAME="TR_Toy Story (U) [!].bin"
set SCRIPTNAME="toystorysmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause 
