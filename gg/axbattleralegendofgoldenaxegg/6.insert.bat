@echo off
set T_FILENAME="TR_Ax Battler - A Legend of Golden Axe (U) (V2.4) [!].gg"
set S_FILENAME="Ax Battler - A Legend of Golden Axe (U) (V2.4) [!].gg"
set SCRIPTNAME="axbattleralegendofgoldenaxegg"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt.tbl tr_%SCRIPTNAME%Alt.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt2.tbl tr_%SCRIPTNAME%Alt2.ext %T_FILENAME%
pause
