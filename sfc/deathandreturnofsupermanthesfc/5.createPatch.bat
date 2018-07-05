@echo off
set T_FILENAME="TR_Death and Return of Superman, The (U).smc"
set S_FILENAME="Death and Return of Superman, The (U).smc"
set SCRIPTNAME="deathandreturnofsupermanthesfc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
