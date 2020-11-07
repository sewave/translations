@echo off
set T_FILENAME="TR_Zoot.tzx"
set S_FILENAME="Zoot.tzx"
set SCRIPTNAME="zoottzx"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -if %T_FILENAME% title.scr 1AA
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fctzx %T_FILENAME%
pause
