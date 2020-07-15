@echo off
set T_FILENAME="TR_Marksman Shooting & Trap Shooting & Safari Hunt (Europe).sms"
set SCRIPTNAME="marksmanshootingtrapshootingsafarihuntsms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 1D320:200,1DDE0:200,83E0:80,C3E0:80,
pause
