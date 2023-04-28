@echo off
set T_FILENAME="Dark Fusion.tzx"
set SCRIPTNAME="darkfusiontzx"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
