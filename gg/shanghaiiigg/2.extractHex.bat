@echo off
set T_FILENAME="TR_Shanghai II (Japan) (Rev A).gg"
set SCRIPTNAME="shanghaiiigg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 13400:C0,13A00:C0,12940:20,12A00:80,12F40:20,13000:80,12160:E0,122E0:80,13260:80
pause
