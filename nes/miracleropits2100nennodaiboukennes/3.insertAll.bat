@echo off
set T_FILENAME="TR_Miracle Ropit's - 2100 Nen no Daibouken (Japan).nes"
set S_FILENAME="Miracle Ropit's - 2100 Nen no Daibouken (Japan).nes"
set SCRIPTNAME="miracleropits2100nennodaiboukennes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt.tbl tr_%SCRIPTNAME%Alt.ext %T_FILENAME%
pause
