@echo off
set T_FILENAME="TR_Twin Eagle - Revenge Joe's Brother (U) [!].nes"
set S_FILENAME="Twin Eagle - Revenge Joe's Brother (U) [!].nes"
set SCRIPTNAME="twineaglenes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
