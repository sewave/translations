@echo off
set T_FILENAME="TR_Doordoor Mk2 (1984) (Enix) (J).rom"
set S_FILENAME="Doordoor Mk2 (1984) (Enix) (J).rom"
set SCRIPTNAME="doordoormk2rom"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
