@echo off
set T_FILENAME="TR_Mitsume ga Tooru (Japan) [T+ENG].nes"
set S_FILENAME="Mitsume ga Tooru (Japan) [T+ENG].nes"
set SCRIPTNAME="mitsumegatoorunes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt.tbl tr_%SCRIPTNAME%Alt.ext %T_FILENAME%
pause
