@echo off
set T_FILENAME="TR_Dino Dini's Soccer (Europe).md"
set SCRIPTNAME="dinodinissoccersmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex A9080:20,A91A0:20,A9220:20,A93A0:C0
pause
