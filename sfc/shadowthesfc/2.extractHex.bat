@echo off
set T_FILENAME="TR_Shadow, The (USA) (Proto 1).sfc"
set SCRIPTNAME="shadowthesfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 23363:20,233E3:20,23783:20,23903:30,150030:80,1503B0:20,23883:10
pause
