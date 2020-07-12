@echo off
set T_FILENAME="TR_Super 3D Noah's Ark (USA) (Unl).sfc"
set S_FILENAME="Super 3D Noah's Ark (USA) (Unl).sfc"
set SCRIPTNAME="super3dnoahsarksfc"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
REM Invalid header
REM java -jar Hextractor.jar -fcs %T_FILENAME%
pause
