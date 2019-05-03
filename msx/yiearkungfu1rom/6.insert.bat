@echo off
set T_FILENAME="TR_Yie Ar Kung-Fu 1 (1985) (Konami) (J).rom"
set S_FILENAME="Yie Ar Kung-Fu 1 (1985) (Konami) (J).rom"
set SCRIPTNAME="yiearkungfu1rom"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
