@echo off
set T_FILENAME="TR_Sylvan Tale (J) [T+Eng1.00_AGTP].gg"
set S_FILENAME="Sylvan Tale (J) [T+Eng1.00_AGTP].gg"
set SCRIPTNAME="sylvantalegg"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
