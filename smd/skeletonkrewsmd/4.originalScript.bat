@echo off
set T_FILENAME="Skeleton Krew (U) [!].gen"
set SCRIPTNAME="skeletonkrewsmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
