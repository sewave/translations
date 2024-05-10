@echo off
set T_FILENAME="TR_Bobby's World (USA) (Proto).sfc"
set S_FILENAME="Bobby's World (USA) (Proto).sfc"
set SCRIPTNAME="bobbysworldsfc"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcs %T_FILENAME%
pause
