@echo off
set T_FILENAME="TR_Death and Return of Superman, The (U) [!].bin"
set SCRIPTNAME="deathandreturnofsupermanthesmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 8D2E0:100,8E0E0:100,1F9450:200,
pause
