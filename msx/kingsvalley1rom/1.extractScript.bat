@echo off
set T_FILENAME="King's Valley 1 (1985) (Konami) (J).rom"
set SCRIPTNAME="kingsvalley1rom"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
