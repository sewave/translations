@echo off
set T_FILENAME="TR_Star Hawk (U) [!].gb"
set SCRIPTNAME="starhawkgb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 1E4C0:90,FA30:10,FA70:10,1E780:20,1E7C0:10,145C0:20
pause
