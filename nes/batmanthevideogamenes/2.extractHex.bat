@echo off
set T_FILENAME="TR_Batman - The Video Game (USA).nes"
set SCRIPTNAME="batmanthevideogamenes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 35010:300,35710:200,39BC0:10,37CA0:10,37DA0:10,37EA0:10,37F80:10,2D710:10,201D0:20,20420:20,21870:20,21970:20,21A70:20,21B70:30,
pause
