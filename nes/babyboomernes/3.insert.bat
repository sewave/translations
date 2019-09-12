@echo off
set T_FILENAME="TR_Baby Boomer (Color Dreams) [!].nes"
set S_FILENAME="Baby Boomer (Color Dreams) [!].nes"
set SCRIPTNAME="babyboomernes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt.tbl tr_%SCRIPTNAME%Alt.ext %T_FILENAME%
pause
