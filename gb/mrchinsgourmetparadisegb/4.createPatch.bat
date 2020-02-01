@echo off
set T_FILENAME="TR_Mr. Chin's Gourmet Paradise (U) [!].gb"
set S_FILENAME="Mr. Chin's Gourmet Paradise (U) [!].gb"
set SCRIPTNAME="mrchinsgourmetparadisegb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
