@echo off
set T_FILENAME="TR_Solomon's Key (U) [!].nes"
set S_FILENAME="Solomon's Key (U) [!].nes"
set SCRIPTNAME="solomonskeynes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
