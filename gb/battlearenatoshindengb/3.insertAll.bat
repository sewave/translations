@echo off
set T_FILENAME="TR_Battle Arena Toshinden (USA) (SGB Enhanced).gb"
set S_FILENAME="Battle Arena Toshinden (USA) (SGB Enhanced).gb"
set SCRIPTNAME="battlearenatoshindengb"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt.tbl tr_%SCRIPTNAME%Alt.ext %T_FILENAME%
java -jar Hextractor.jar -fcg %T_FILENAME%
pause
