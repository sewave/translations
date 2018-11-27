@echo off
set T_FILENAME="TR_Legendary Axe II, The (USA).pce"
set S_FILENAME="Legendary Axe II, The (USA).pce"
set SCRIPTNAME="legendaryaxeiithepce"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
