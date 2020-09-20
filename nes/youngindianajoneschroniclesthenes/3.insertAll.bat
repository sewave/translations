@echo off
set T_FILENAME="TR_Young Indiana Jones Chronicles, The (USA).nes"
set S_FILENAME="Young Indiana Jones Chronicles, The (USA).nes"
set SCRIPTNAME="youngindianajoneschroniclesthenes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt.tbl tr_%SCRIPTNAME%Alt.ext %T_FILENAME%
REM java -jar Hextractor.jar -ca tr_%SCRIPTNAME%Alt.ext tr_%SCRIPTNAME%Alt_clean.ext
pause
