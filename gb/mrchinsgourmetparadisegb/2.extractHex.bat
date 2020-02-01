@echo off
set T_FILENAME="TR_Mr. Chin's Gourmet Paradise (U) [!].gb"
set SCRIPTNAME="mrchinsgourmetparadisegb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 5972:50,5A72:50,6E02:40
pause
