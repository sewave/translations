@echo off 
set T_FILENAME="TR_Mortal Kombat II (U) [!].gg"
set S_FILENAME="Mortal Kombat II (U) [!].gg"
set SCRIPTNAME="mk2gg"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips 
pause 
