@echo off
set T_FILENAME="TR_It Came from the Desert (USA) (Proto).md"
set SCRIPTNAME="itcamefromthedesertsmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
