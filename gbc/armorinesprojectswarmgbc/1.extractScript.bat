@echo off
set T_FILENAME="Armorines - Project S.W.A.R.M. (USA, Europe) (En,De).gbc"
set SCRIPTNAME="armorinesprojectswarmgbc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
