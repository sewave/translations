@echo off
set T_FILENAME="TR_Virtua Fighter Animation (J) [!].sms"
set SCRIPTNAME="virtuafighteranimationsms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 2F8D3:10,2F913:10,2FA13:10,2F9D3:10,2FC84:120,3D0C0:20,3D2E0:20,3D3A0:20,C290:80,21728:40,218A8:60,21AA8:60,DDA19:20,22F28:300
pause
