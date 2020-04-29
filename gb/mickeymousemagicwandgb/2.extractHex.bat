@echo off
set T_FILENAME="TR_Mickey Mouse - Magic Wand (U) [S][!].gb"
set SCRIPTNAME="mickeymousemagicwandgb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 122C8:20,ACA5:40,ADD6:40,10308:30,11488:30,11BF8:30,10CC8:30,AE36:20,174A6:A0,175A6:A0,9DC6:30,12DD8:30,ADA6:10
pause
