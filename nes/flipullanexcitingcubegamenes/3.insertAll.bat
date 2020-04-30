@echo off
set T_FILENAME="TR_Flipull - An Exciting Cube Game (J).nes"
set S_FILENAME="Flipull - An Exciting Cube Game (J).nes"
set SCRIPTNAME="flipullanexcitingcubegamenes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
