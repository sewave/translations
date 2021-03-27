@echo off
set T_FILENAME="TR_Baby's Day Out (USA) (Proto) (February, 1995).md"
set SCRIPTNAME="babysdayoutsmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 253CE:80,25BAE:80,257CE:60,25FAE:60
pause
