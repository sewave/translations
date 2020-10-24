@echo off
set T_FILENAME="TR_Smurfs, The (USA, Europe) (En,Fr,De) (Rev A) (SGB Enhanced).gb"
set S_FILENAME="Smurfs, The (USA, Europe) (En,Fr,De) (Rev A) (SGB Enhanced).gb"
set SCRIPTNAME="smurfsthegb"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcg %T_FILENAME%
pause
