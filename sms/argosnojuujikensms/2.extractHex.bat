@echo off
set T_FILENAME="TR_Argos no Juujiken (J) [!].sms"
set SCRIPTNAME="argosnojuujikensms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 17140:20,174A0:20,17500:20,17560:20,176A0:20,17900:100,1F000:200
pause
