@echo off
set T_FILENAME="TR_Blaster Master Boy (U).gb"
set S_FILENAME="Blaster Master Boy (U).gb"
set SCRIPTNAME="blastermasterboygb"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcg %T_FILENAME%
pause
