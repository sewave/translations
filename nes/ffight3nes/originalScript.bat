@echo off 
set T_FILENAME="Final Fight 3 (Unl) [!].nes"
set SCRIPTNAME="ffight3nes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off 
java -jar Hextractor.jar -a %SCRIPTNAME%Title.tbl %T_FILENAME% %SCRIPTNAME%Title.ext %SCRIPTNAME%Title.off 
pause 
