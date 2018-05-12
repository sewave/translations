@echo off
set T_FILENAME="Jurassic Park (U) [!].gen"
set SCRIPTNAME="jurassicparksmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
