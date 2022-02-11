@echo off
set T_FILENAME="TR_Mega Man X (USA) (Rev 1).sfc"
set S_FILENAME="Mega Man X (USA) (Rev 1).sfc"
set SCRIPTNAME="megamanxsfc"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
compressor -o %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt.tbl tr_%SCRIPTNAME%Alt.ext %T_FILENAME%
java -jar Hextractor.jar -fcs %T_FILENAME%
pause
