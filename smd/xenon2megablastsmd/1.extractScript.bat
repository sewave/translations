@echo off
set T_FILENAME="Xenon 2 - Megablast (E) [c][!].gen"
set SCRIPTNAME="xenon2megablastsmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
