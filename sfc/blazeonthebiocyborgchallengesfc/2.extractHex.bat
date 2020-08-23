@echo off
set T_FILENAME="TR_BlaZeon - The Bio-Cyborg Challenge (USA).sfc"
set SCRIPTNAME="blazeonthebiocyborgchallengesfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex F9A5E:80,F9C5E:80,F9E5E:80,FA05E:80,FA25E:80,FA45E:80,FA65E:80,FA85E:80,F9B5E:80,F9D5E:80,F9F5E:80,FA15E:80,FA35E:80,FA55E:80,FA75E:80,FA95E:80
pause
