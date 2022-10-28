@echo off
set T_FILENAME="TR_QuackShot Starring Donald Duck ~ QuackShot - I Love Donald Duck - Guruzia Ou no Hihou (World) (v1.1).md"
set SCRIPTNAME="quackshotsmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
