@echo off 
set T_FILENAME="TR_Toy Story (U) [!].bin"
set S_FILENAME="Toy Story (U) [!].bin"
set SCRIPTNAME="toystorysmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips 
pause 
