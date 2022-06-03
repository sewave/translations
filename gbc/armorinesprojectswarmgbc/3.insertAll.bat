@echo off
set T_FILENAME="TR_Armorines - Project S.W.A.R.M. (USA, Europe) (En,De).gbc"
set S_FILENAME="Armorines - Project S.W.A.R.M. (USA, Europe) (En,De).gbc"
set SCRIPTNAME="armorinesprojectswarmgbc"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcg %T_FILENAME%
pause
