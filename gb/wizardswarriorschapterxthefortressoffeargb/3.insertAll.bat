@echo off
set T_FILENAME="TR_Wizards & Warriors Chapter X - The Fortress of Fear (E) [!].gb"
set S_FILENAME="Wizards & Warriors Chapter X - The Fortress of Fear (E) [!].gb"
set SCRIPTNAME="wizardswarriorschapterxthefortressoffeargb"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcg %T_FILENAME%
pause
