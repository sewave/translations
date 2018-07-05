@echo off
set T_FILENAME="TR_Parasol Stars - The Story of Bubble Bobble 3 (E) [!].nes"
set S_FILENAME="Parasol Stars - The Story of Bubble Bobble 3 (E) [!].nes"
set SCRIPTNAME="parasolstarsnes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt.tbl tr_%SCRIPTNAME%Alt.ext %T_FILENAME%
pause
