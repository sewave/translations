@echo off
set T_FILENAME="TR_Jungle Book, The (U) [!].nes"
set S_FILENAME="Jungle Book, The (U) [!].nes"
set SCRIPTNAME="junglebooknes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
