@echo off
set T_FILENAME="TR_Three Weeks In Paradise - 128k.tap"
set S_FILENAME="Three Weeks In Paradise - 128k.tap"
set SCRIPTNAME="threeweeksinparadise128ktap"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fctap %T_FILENAME%
pause
