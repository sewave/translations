@echo off
set T_FILENAME="Choplifter III (U) [!].gg"
set SCRIPTNAME="choplifteriiigg"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
