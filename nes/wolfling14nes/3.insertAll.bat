@echo off
set T_FILENAME="TR_wolfling14.nes"
set S_FILENAME="wolfling14.nes"
set SCRIPTNAME="wolfling14nes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
