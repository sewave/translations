@echo off
set T_FILENAME="TR_Roswell Conspiracies - Aliens, Myths & Legends (USA) (En,Fr,De).gbc"
set S_FILENAME="Roswell Conspiracies - Aliens, Myths & Legends (USA) (En,Fr,De).gbc"
set SCRIPTNAME="roswellconspiraciesaliensmythslegendsgbc"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcg %T_FILENAME%
pause
