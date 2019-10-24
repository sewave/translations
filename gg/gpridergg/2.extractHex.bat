@echo off
set T_FILENAME="TR_GP Rider (USA, Europe).gg"
set SCRIPTNAME="gpridergg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex C2A0:160,D000:A0,D580:80,30DA0:200,31900:100,3F940:400,2FC00:200,30C80:60
pause
