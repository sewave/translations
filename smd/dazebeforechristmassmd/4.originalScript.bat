@echo off
set T_FILENAME="Daze Before Christmas, The (E) [!].bin"
set SCRIPTNAME="dazebeforechristmassmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
