@echo off
set T_FILENAME="TR_Hunt for Red October, The (USA, Europe).gb"
set SCRIPTNAME="huntforredoctoberthegb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 8B66:10,
pause
