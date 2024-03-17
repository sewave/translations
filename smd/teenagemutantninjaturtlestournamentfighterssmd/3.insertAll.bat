@echo off
set T_FILENAME="TR_Teenage Mutant Ninja Turtles - Tournament Fighters (USA).md"
set S_FILENAME="Teenage Mutant Ninja Turtles - Tournament Fighters (USA).md"
set SCRIPTNAME="teenagemutantninjaturtlestournamentfighterssmd"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt.tbl tr_%SCRIPTNAME%Alt.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt2.tbl tr_%SCRIPTNAME%Alt2.ext %T_FILENAME%
java -jar Hextractor.jar -fcm %T_FILENAME%
pause
