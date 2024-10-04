@echo off
set T_FILENAME="TR_Street Fighter II' - Champion Edition (Japan) [T+ENG_Cabbage].pce"
set S_FILENAME="Street Fighter II' - Champion Edition (Japan) [T+ENG_Cabbage].pce"
set SCRIPTNAME="streetfighteriichampioneditionpce"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt.tbl tr_%SCRIPTNAME%Alt.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt2.tbl tr_%SCRIPTNAME%Alt2.ext %T_FILENAME%
pause
