@echo off
set T_FILENAME="TR_Jajamaru no Daibouken (Japan).nes"
set S_FILENAME="Jajamaru no Daibouken (Japan).nes"
set SCRIPTNAME="jajamarunodaiboukennes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
