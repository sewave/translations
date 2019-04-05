@echo off
set T_FILENAME="Sylvan Tale (J) [T+Eng1.00_AGTP].gg"
set SCRIPTNAME="sylvantalegg"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
