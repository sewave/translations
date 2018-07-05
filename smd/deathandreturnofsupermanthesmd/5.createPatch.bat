@echo off
set T_FILENAME="TR_Death and Return of Superman, The (U) [!].bin"
set S_FILENAME="Death and Return of Superman, The (U) [!].bin"
set SCRIPTNAME="deathandreturnofsupermanthesmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
