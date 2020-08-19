@echo off
set T_FILENAME="TR_Jetsons, The - Invasion of the Planet Pirates (USA).sfc"
set SCRIPTNAME="jetsonstheinvasionoftheplanetpiratessfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
