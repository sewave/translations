@echo off
set T_FILENAME="TR_The Evil Dead.tzx"
set S_FILENAME="The Evil Dead.tzx"
set SCRIPTNAME="theevildeadtzx"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -if %T_FILENAME% title.scr 018F
java -jar Hextractor.jar -fctzx %T_FILENAME%
pause
