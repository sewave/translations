@echo off
set T_FILENAME="TR_Snow Bros. - Nick & Tom (Japan).md"
set SCRIPTNAME="snowbrosnicktomsmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex ADA00:E0
pause
