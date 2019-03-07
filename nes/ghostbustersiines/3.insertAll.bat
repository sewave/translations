@echo off
set T_FILENAME="TR_Ghostbusters II (U) [!].nes"
set S_FILENAME="Ghostbusters II (U) [!].nes"
set SCRIPTNAME="ghostbustersiines"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
