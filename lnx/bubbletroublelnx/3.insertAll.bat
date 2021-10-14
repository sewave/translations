@echo off
set T_FILENAME="TR_Bubble Trouble (USA, Europe).lnx"
set S_FILENAME="Bubble Trouble (USA, Europe).lnx"
set SCRIPTNAME="bubbletroublelnx"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
