@echo off
set T_FILENAME="TR_RoboCop (USA).nes"
set SCRIPTNAME="robocopnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 000302B0:60,00029E90:80,00029F90:80,00020F50:80,36100:100
pause
