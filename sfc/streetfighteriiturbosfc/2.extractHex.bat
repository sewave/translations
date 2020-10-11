@echo off
set T_FILENAME="TR_Street Fighter II Turbo (USA) (Rev 1).sfc"
set SCRIPTNAME="streetfighteriiturbosfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex A5C64:400,A68A4:200
pause
