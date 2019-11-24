@echo off
set T_FILENAME="TR_Seiken Acho (1985) (Ascii) (J).rom"
set S_FILENAME="Seiken Acho (1985) (Ascii) (J).rom"
set SCRIPTNAME="seikenachorom"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
