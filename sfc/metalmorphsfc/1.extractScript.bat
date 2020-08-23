@echo off
set T_FILENAME="Metal Morph (USA).sfc"
set SCRIPTNAME="metalmorphsfc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
