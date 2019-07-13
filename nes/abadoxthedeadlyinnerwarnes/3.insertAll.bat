@echo off
set T_FILENAME="TR_Abadox - The Deadly Inner War (U) [!].nes"
set S_FILENAME="Abadox - The Deadly Inner War (U) [!].nes"
set SCRIPTNAME="abadoxthedeadlyinnerwarnes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
