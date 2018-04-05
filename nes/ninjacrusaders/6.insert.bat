@echo off
set T_FILENAME="TR_Ninja Crusaders (U) [!].nes"
set S_FILENAME="Ninja Crusaders (U) [!].nes"
set SCRIPTNAME="ninjacrusaders"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
