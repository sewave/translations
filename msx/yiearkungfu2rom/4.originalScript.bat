@echo off
set T_FILENAME="Yie Ar Kung-Fu 2 (1985) (Konami) (J).rom"
set SCRIPTNAME="yiearkungfu2rom"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
