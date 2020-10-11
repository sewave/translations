@echo off
set T_FILENAME="TR_Double Dribble - The Playoff Edition (USA).md"
set S_FILENAME="Double Dribble - The Playoff Edition (USA).md"
set SCRIPTNAME="doubledribbletheplayoffeditionsmd"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcm %T_FILENAME%
pause