@echo off
set T_FILENAME="TR_Crisis Force (J) [!].nes"
set S_FILENAME="Crisis Force (J) [!].nes"
set SCRIPTNAME="crisisforcenes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
