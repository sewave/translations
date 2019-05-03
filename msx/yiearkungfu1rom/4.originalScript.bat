@echo off
set T_FILENAME="Yie Ar Kung-Fu 1 (1985) (Konami) (J).rom"
set SCRIPTNAME="yiearkungfu1rom"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
