@echo off
set T_FILENAME="TR_Super Mario World (U) [!].smc"
set S_FILENAME="Super Mario World (U) [!].smc"
set SCRIPTNAME="supermarioworldsfc"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt.tbl tr_%SCRIPTNAME%Alt.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt2.tbl tr_%SCRIPTNAME%Alt2.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt3.tbl tr_%SCRIPTNAME%Alt3.ext %T_FILENAME%
java -jar Hextractor.jar -if %T_FILENAME% x05C06Cc.bin 5C06C
java -jar Hextractor.jar -if %T_FILENAME% x05CB7Bc.bin 5CB7B
java -jar Hextractor.jar -fcs %T_FILENAME%
pause
