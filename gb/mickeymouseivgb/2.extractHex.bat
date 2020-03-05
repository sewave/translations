@echo off
set T_FILENAME="TR_Mickey Mouse IV (J).gb"
set SCRIPTNAME="mickeymouseivgb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex A822:50,A902:20,AC02:50,C990:10,CB10:20,DB00:20,DC00:60,100E0:20
pause
