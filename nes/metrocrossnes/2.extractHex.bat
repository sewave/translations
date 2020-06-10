@echo off
set T_FILENAME="TR_Metro-Cross (Japan).nes"
set SCRIPTNAME="metrocrossnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 8590:20,8E70:10,84C0:10,C0D0:40,C1E0:30,C2E0:30
pause
