@echo off
set T_FILENAME="TR_Death and Return of Superman, The (U).smc"
set SCRIPTNAME="deathandreturnofsupermanthesfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 172C1:100
pause
