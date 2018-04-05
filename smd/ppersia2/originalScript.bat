@echo off 
set T_FILENAME="Prince of Persia 2 - The Shadow and The Flame (Beta).bin"
set SCRIPTNAME="ppersia2"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off 
pause 
