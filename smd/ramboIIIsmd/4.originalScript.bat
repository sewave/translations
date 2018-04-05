@echo off
set T_FILENAME="Rambo III (W) (REV01) [!].bin"
set SCRIPTNAME="ramboIIIsmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
