@echo off
set T_FILENAME="Super Mario Bros (J) [p1].pce"
set SCRIPTNAME="supermariobrospce"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
