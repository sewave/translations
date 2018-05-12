@echo off
set T_FILENAME="TR_Jurassic Park (E) [!].sms"
set SCRIPTNAME="jurassicparksms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 8028-8128,537F8:100,8200:28,8300:8,539D0:28,53AD0:8
pause
