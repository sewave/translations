@echo off
set T_FILENAME="TR_Rainbow Islands - The Story of Bubble Bobble 2 (U) [!].nes"
set S_FILENAME="Rainbow Islands - The Story of Bubble Bobble 2 (U) [!].nes"
set SCRIPTNAME="rainbowislandsusanes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
