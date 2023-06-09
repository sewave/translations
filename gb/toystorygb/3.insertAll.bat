@echo off
set T_FILENAME="TR_Toy Story (USA) (Rev 1) (SGB Enhanced).gb"
set S_FILENAME="Toy Story (USA) (Rev 1) (SGB Enhanced).gb"
set SCRIPTNAME="toystorygb"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcg %T_FILENAME%
pause
