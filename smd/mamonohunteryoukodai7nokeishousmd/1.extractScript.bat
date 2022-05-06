@echo off
set T_FILENAME="Mamono Hunter Youko - Dai 7 no Keishou (Japan).md"
set SCRIPTNAME="mamonohunteryoukodai7nokeishousmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
