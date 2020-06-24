@echo off
set T_FILENAME="TR_Laser Invasion (U) [!].nes"
set S_FILENAME="Laser Invasion (U) [!].nes"
set SCRIPTNAME="laserinvasionnes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
