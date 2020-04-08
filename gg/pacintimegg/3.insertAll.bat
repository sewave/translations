@echo off
set T_FILENAME="TR_Pac-In-Time (Prototype) [!].gg"
set S_FILENAME="Pac-In-Time (Prototype) [!].gg"
set SCRIPTNAME="pacintimegg"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
