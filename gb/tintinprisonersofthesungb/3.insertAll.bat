@echo off
set T_FILENAME="TR_Tintin - Prisoners of the Sun (Europe) (En,Fr,De).gb"
set S_FILENAME="Tintin - Prisoners of the Sun (Europe) (En,Fr,De).gb"
set SCRIPTNAME="tintinprisonersofthesungb"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcg %T_FILENAME%
pause
