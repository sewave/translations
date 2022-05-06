@echo off
set T_FILENAME="TR_Mamono Hunter Youko - Dai 7 no Keishou (Japan).md"
set S_FILENAME="Mamono Hunter Youko - Dai 7 no Keishou (Japan).md"
set SCRIPTNAME="mamonohunteryoukodai7nokeishousmd"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcm %T_FILENAME%
pause
