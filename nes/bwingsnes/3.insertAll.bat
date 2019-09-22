@echo off
set T_FILENAME="TR_B-Wings (J) [!].nes"
set S_FILENAME="B-Wings (J) [!].nes"
set SCRIPTNAME="bwingsnes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
