@echo off
set T_FILENAME="TR_Druaga no Tou (Japan).rom"
set S_FILENAME="Druaga no Tou (Japan).rom"
set SCRIPTNAME="druaganotourom"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
