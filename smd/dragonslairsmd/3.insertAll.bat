@echo off
set T_FILENAME="TR_Dragon's Lair (USA) (Proto) (June, 1994).md"
set S_FILENAME="Dragon's Lair (USA) (Proto) (June, 1994).md"
set SCRIPTNAME="dragonslairsmd"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcm %T_FILENAME%
pause
