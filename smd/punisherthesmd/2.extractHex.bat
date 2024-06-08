@echo off
set T_FILENAME="TR_Punisher, The (USA).md"
set SCRIPTNAME="punisherthesmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 9ACE8:40,9B028:40,9B0E8:40,9B6A8:40,9B868:40,9B8E8:40,9B9E8:80,B0E6E:200,B1CA4:100,B1FE4:100
pause
