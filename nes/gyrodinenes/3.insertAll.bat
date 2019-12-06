@echo off
set T_FILENAME="TR_Gyrodine (J) [!].nes"
set S_FILENAME="Gyrodine (J) [!].nes"
set SCRIPTNAME="gyrodinenes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
