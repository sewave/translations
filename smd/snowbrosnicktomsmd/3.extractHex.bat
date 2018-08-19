@echo off
set T_FILENAME="TR_Snow Bros. - Nick & Tom (J) [c][!].gen"
set SCRIPTNAME="snowbrosnicktomsmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 52900-52F00
pause
