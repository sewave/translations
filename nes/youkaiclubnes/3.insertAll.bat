@echo off
set T_FILENAME="TR_Youkai Club (Japan).nes"
set S_FILENAME="Youkai Club (Japan).nes"
set SCRIPTNAME="youkaiclubnes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
