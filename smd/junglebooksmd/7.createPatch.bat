@echo off
set T_FILENAME="TR_Jungle Book, The (U) [!].bin"
set S_FILENAME="Jungle Book, The (U) [!].bin"
set SCRIPTNAME="junglebooksmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
