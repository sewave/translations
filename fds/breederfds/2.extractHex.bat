@echo off
set T_FILENAME="TR_Breeder (Japan) [b].fds"
set SCRIPTNAME="breederfds"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 92C:20,143C:60,D4C:90,114D7:50,11C87:20,11D07:20,11E27:20
pause
