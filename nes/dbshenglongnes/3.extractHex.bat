@echo off
set T_FILENAME="TR_Dragon Ball - Shen Long no Nazo (J) [hM34][T+Eng1.11_TransBRC].nes"
set SCRIPTNAME="dbshenglongnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 21B60:60,222F0:10,21BD0:40
pause
