@echo off
set T_FILENAME="TR_Duck Maze (Australia) (Unl).nes"
set S_FILENAME="Duck Maze (Australia) (Unl).nes"
set SCRIPTNAME="duckmazenes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
