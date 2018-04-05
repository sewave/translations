@echo off
set T_FILENAME="Mickey Mania - Timeless Adventures of Mickey Mouse (U) [!].gen"
set SCRIPTNAME="mickeymaniasmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
