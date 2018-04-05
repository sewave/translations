@echo off 
set T_FILENAME="TR_Mortal Kombat (U) [!].gg"
set S_FILENAME="Mortal Kombat (U) [!].gg"
set SCRIPTNAME="mk1gg"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips 
pause 
