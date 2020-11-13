@echo off
set T_FILENAME="TR_Simpsons, The - Night of the Living Treehouse of Horror (USA, Europe).gbc"
set S_FILENAME="Simpsons, The - Night of the Living Treehouse of Horror (USA, Europe).gbc"
set SCRIPTNAME="simpsonsthenightofthelivingtreehouseofhorrorgbc"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcg %T_FILENAME%
pause