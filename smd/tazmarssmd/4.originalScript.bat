@echo off
set T_FILENAME="Escape From Mars Starring Taz (U) [!].bin"
set SCRIPTNAME="tazmarssmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
