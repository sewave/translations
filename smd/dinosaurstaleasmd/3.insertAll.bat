@echo off
set T_FILENAME="TR_Dinosaur's Tale, A (USA).md"
set S_FILENAME="Dinosaur's Tale, A (USA).md"
set SCRIPTNAME="dinosaurstaleasmd"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcm %T_FILENAME%
pause
