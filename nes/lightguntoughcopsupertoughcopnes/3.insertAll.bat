@echo off
set T_FILENAME="TR_Lightgun Game 2 in 1 - Tough Cop + Super Tough Cop (Asia) (Unl).nes"
set S_FILENAME="Lightgun Game 2 in 1 - Tough Cop + Super Tough Cop (Asia) (Unl).nes"
set SCRIPTNAME="lightguntoughcopsupertoughcopnes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt.tbl tr_%SCRIPTNAME%Alt.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt2.tbl tr_%SCRIPTNAME%Alt2.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt3.tbl tr_%SCRIPTNAME%Alt3.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt4.tbl tr_%SCRIPTNAME%Alt4.ext %T_FILENAME%
pause
