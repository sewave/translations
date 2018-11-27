@echo off
set T_FILENAME="TR_Blaster Master (U) [!].nes"
set S_FILENAME="Blaster Master (U) [!].nes"
set SCRIPTNAME="blastermasternes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
