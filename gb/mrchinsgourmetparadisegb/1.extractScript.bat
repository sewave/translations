@echo off
set T_FILENAME="Mr. Chin's Gourmet Paradise (U) [!].gb"
set SCRIPTNAME="mrchinsgourmetparadisegb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
java -jar Hextractor.jar -a %SCRIPTNAME%Alt.tbl %T_FILENAME% %SCRIPTNAME%Alt.ext %SCRIPTNAME%Alt.off
pause
