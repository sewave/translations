@echo off
set T_FILENAME="TR_Skeleton Krew (U) [!].gen"
set S_FILENAME="Skeleton Krew (U) [!].gen"
set SCRIPTNAME="skeletonkrewsmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
