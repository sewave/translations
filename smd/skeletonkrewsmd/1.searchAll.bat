@echo off
set T_FILENAME="Skeleton Krew (U) [!].gen"
set SCRIPTNAME="skeletonkrewsmd"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause
