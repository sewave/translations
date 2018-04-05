@echo off
set T_FILENAME="TR_Dragon Ball - Shen Long no Nazo (J) [hM34][T+Eng1.11_TransBRC].nes"
set S_FILENAME="Dragon Ball - Shen Long no Nazo (J) [hM34].nes"
set SCRIPTNAME="dbshenglongnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
