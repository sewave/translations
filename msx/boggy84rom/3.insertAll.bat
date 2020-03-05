@echo off
set T_FILENAME="TR_Boggy'84 (1984) (Nippon Columbia) (J).rom"
set S_FILENAME="Boggy'84 (1984) (Nippon Columbia) (J).rom"
set SCRIPTNAME="boggy84rom"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
