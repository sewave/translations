@echo off
set T_FILENAME="TR_Legendary Wings (U) [!].nes"
set S_FILENAME="Legendary Wings (U) [!].nes"
set SCRIPTNAME="legendarywingsnes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
