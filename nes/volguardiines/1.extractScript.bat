@echo off
set T_FILENAME="Volguard II (Japan).nes"
set SCRIPTNAME="volguardiines"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
