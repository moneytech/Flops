@call "C:\Program Files (x86)\Microsoft Visual Studio 12.0\VC\vcvarsall.bat" x64

mkdir "Flops - Windows/Binaries"
cd    "Flops - Windows/Binaries"

cl ../../source/*.c ../../source/*.cpp -o "x64_Core2.exe"       /EHsc /openmp /TP /O2           /D "ArchCore2"
cl ../../source/*.c ../../source/*.cpp -o "x64_SandyBridge.exe" /EHsc /openmp /TP /O2 /arch:AVX /D "ArchSandyBridge"
cl ../../source/*.c ../../source/*.cpp -o "x64_Bulldozer.exe"   /EHsc /openmp /TP /O2 /arch:AVX /D "ArchBulldozer"
cl ../../source/*.c ../../source/*.cpp -o "x64_Piledriver.exe"  /EHsc /openmp /TP /O2 /arch:AVX /D "ArchPiledriver"
cl ../../source/*.c ../../source/*.cpp -o "x64_Haswell.exe"     /EHsc /openmp /TP /O2 /arch:AVX /D "ArchHaswell"

del *.obj

pause
