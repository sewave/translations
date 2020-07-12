@echo off
set T_FILENAME="TR_Batman Forever (World).gg"
set S_FILENAME="Batman Forever (World).gg"
set SCRIPTNAME="batmanforevergg"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
