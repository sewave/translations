@echo off
set T_FILENAME="TR_Chester Cheetah 2 - Wild Wild Quest (U) [!].bin"
set SCRIPTNAME="chestercheetah2wildwildquestsmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
