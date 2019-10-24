@echo off
set T_FILENAME="TR_Dropzone (Europe).nes"
set S_FILENAME="Dropzone (Europe).nes"
set SCRIPTNAME="dropzonenes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
