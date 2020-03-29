@echo off
set T_FILENAME="TR_GRIND Stormer (U) [!].bin"
set SCRIPTNAME="grindstormersmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 36240:800,38220:600,41EE0:300,441A0:80
pause
