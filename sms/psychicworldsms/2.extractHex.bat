@echo off
set T_FILENAME="TR_Psychic World (Europe).sms"
set SCRIPTNAME="psychicworldsms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 3C180:20,3C580:80,19500:20,197C0:20,19860:20,3D000:20,3D100:20,3D180:40,37940:60,379E0:20,37AC0:20,23B20:80
pause
