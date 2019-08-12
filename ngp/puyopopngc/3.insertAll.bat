@echo off
set T_FILENAME="TR_Puyo Pop (World) (En,Ja) (v1.06).ngc"
set S_FILENAME="Puyo Pop (World) (En,Ja) (v1.06).ngc"
set SCRIPTNAME="puyopopngc"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
