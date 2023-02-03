@echo off
set T_FILENAME="TR_Wario Land - Super Mario Land 3 (World).gb"
set SCRIPTNAME="wariolandsupermarioland3gb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 471B0:20,473B0:20,475B0:20,477B0:20,256F5:8,25BBC:8,26A0C:8,26A87:8,2642F:8,532D8:8,53351:8,5334A:8,25698:8,256ED:8,24D10:10,254AB:8,25BD9:8,7EA01:10,7EA71:10
pause
