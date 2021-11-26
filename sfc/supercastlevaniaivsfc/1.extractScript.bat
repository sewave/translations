@echo off
set T_FILENAME="Super Castlevania IV (USA).sfc"
set SCRIPTNAME="supercastlevaniaivsfc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
