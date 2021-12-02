@echo off
set T_FILENAME="TR_Malibu Bikini Volleyball (USA, Europe).lnx"
set S_FILENAME="Malibu Bikini Volleyball (USA, Europe).lnx"
set SCRIPTNAME="malibubikinivolleyballlnx"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
