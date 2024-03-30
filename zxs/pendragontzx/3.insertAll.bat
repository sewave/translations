@echo off
set T_FILENAME="TR_Pendragon.tzx"
set S_FILENAME="Pendragon.tzx"
set SCRIPTNAME="pendragontzx"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -if %T_FILENAME% loading.scr 1FB
java -jar Hextractor.jar -fctzx %T_FILENAME%
pause
