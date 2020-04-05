@echo off
set T_FILENAME="TR_Bomb Disposer (Sachen 4-in-1 Vol. 6) (Unl) [!].gb"
set S_FILENAME="Bomb Disposer (Sachen 4-in-1 Vol. 6) (Unl) [!].gb"
set SCRIPTNAME="bombdisposergb"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt.tbl tr_%SCRIPTNAME%Alt.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt2.tbl tr_%SCRIPTNAME%Alt2.ext %T_FILENAME%
java -jar Hextractor.jar -fcg %T_FILENAME%
pause
