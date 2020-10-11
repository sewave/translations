@echo off
set T_FILENAME="TR_Street Fighter II Turbo (USA) (Rev 1).sfc"
set S_FILENAME="Street Fighter II Turbo (USA) (Rev 1).sfc"
set SCRIPTNAME="streetfighteriiturbosfc"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcs %T_FILENAME%
pause
