@echo off
set T_FILENAME="TR_Choplifter II - Rescue & Survive (USA).gb"
set SCRIPTNAME="choplifteriirescuesurvivegb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex C090:50,C410:50,F936:10,B676:10,B861:10,140C4:10
pause
