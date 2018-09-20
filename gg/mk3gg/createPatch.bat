@echo off 
set T_FILENAME="TR_Mortal Kombat 3 (U) [!].gg"
set S_FILENAME="Mortal Kombat 3 (U) [!].gg"
set SCRIPTNAME="mk3gg"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips 
pause 
