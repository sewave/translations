@echo off
set T_FILENAME="TR_Ikari Warriors II - Victory Road (U) [!].nes"
set S_FILENAME="Ikari Warriors II - Victory Road (U) [!].nes"
set SCRIPTNAME="ikariwarriorsiivictoryroadnes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
