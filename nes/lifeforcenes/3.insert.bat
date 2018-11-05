@echo off
set T_FILENAME="TR_Life Force (U) [!].nes"
set S_FILENAME="Life Force (U) [!].nes"
set SCRIPTNAME="lifeforcenes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
