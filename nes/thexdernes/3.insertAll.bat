@echo off
set T_FILENAME="TR_Thexder (J) [!].nes"
set S_FILENAME="Thexder (J) [!].nes"
set SCRIPTNAME="thexdernes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
