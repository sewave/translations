@echo off
set T_FILENAME="Disney's Aladdin (U) [!].gen"
set SCRIPTNAME="disneysaladdinsmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
