@echo off
set T_FILENAME="Battle Unit Zeoth (U) [!].gb"
set SCRIPTNAME="battleunitzeothgb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
