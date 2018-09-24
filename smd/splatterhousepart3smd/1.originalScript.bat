@echo off
set T_FILENAME="Splatterhouse Part 3 (J) [c][!].gen"
set SCRIPTNAME="splatterhousepart3smd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
