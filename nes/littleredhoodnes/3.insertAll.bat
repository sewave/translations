@echo off
set T_FILENAME="TR_Little Red Hood (Australia) (Unl).nes"
set S_FILENAME="Little Red Hood (Australia) (Unl).nes"
set SCRIPTNAME="littleredhoodnes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt.tbl tr_%SCRIPTNAME%Alt.ext %T_FILENAME%
pause
