@echo off
set T_FILENAME="TR_Jungle Book, The (U) (Mar 1994) [!].gg"
set S_FILENAME="Jungle Book, The (U) (Mar 1994) [!].gg"
set SCRIPTNAME="junglebookgg"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
