@echo off
set T_FILENAME="TR_Hypa Raid.tzx"
set S_FILENAME="Hypa Raid.tzx"
set SCRIPTNAME="hyparaidtzx"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -if %T_FILENAME% loading_mod.scr 380
java -jar Hextractor.jar -fctzx %T_FILENAME%
pause
