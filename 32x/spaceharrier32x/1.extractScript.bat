@echo off
set T_FILENAME="Space Harrier (Japan, USA).32x"
set SCRIPTNAME="spaceharrier32x"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
