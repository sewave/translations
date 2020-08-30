@echo off
set T_FILENAME="TR_Contra Advance - The Alien Wars EX (USA).gba"
set S_FILENAME="Contra Advance - The Alien Wars EX (USA).gba"
set SCRIPTNAME="contraadvancethealienwarsexgba"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
