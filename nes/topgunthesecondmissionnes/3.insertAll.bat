@echo off
set T_FILENAME="TR_Top Gun - The Second Mission (U) [!].nes"
set S_FILENAME="Top Gun - The Second Mission (U) [!].nes"
set SCRIPTNAME="topgunthesecondmissionnes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
