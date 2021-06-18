@echo off
set T_FILENAME="TR_3D Tanx.tzx"
set S_FILENAME="3D Tanx.tzx"
set SCRIPTNAME="3dtanxtzx"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -if %T_FILENAME% title.scr 46
java -jar Hextractor.jar -fctzx %T_FILENAME%
pause
