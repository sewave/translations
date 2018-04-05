@echo off 
set T_FILENAME="TR_Wonder Boy III - Monster Lair (JE) [c][!].bin"
set S_FILENAME="Wonder Boy III - Monster Lair (JE) [c][!].bin"
set SCRIPTNAME="monsterlair"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME% 
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl %SCRIPTNAME%_tr.txt %T_FILENAME% 
java -jar Hextractor.jar -fcm %T_FILENAME% 
pause 
