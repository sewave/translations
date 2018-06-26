@echo off
set T_FILENAME="TR_Skeleton Krew (U) [!].gen"
set SCRIPTNAME="skeletonkrewsmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 14766:100,15A66:100,164E6:100
pause
