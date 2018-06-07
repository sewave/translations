@echo off
set T_FILENAME="TR_Jungle Book, The (U) [!].gb"
set S_FILENAME="Jungle Book, The (U) [!].gb"
set SCRIPTNAME="junglebookgb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
