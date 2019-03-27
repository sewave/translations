@echo off
set T_FILENAME="TR_Wild Gunman (U) (PRG0) [!].nes"
set S_FILENAME="Wild Gunman (U) (PRG0) [!].nes"
set SCRIPTNAME="wildgunmannes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
