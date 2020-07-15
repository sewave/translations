@echo off
set T_FILENAME="TR_Hunt for Red October, The (USA).sfc"
set SCRIPTNAME="huntforredoctoberthesfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
