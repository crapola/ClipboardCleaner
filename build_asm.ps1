$env:path+="F:\Applications\Nasm;F:\Applications\Mingw64\bin" # Path to nasm and mingw
nasm .\clipboardcleaner.asm -fwin64
gcc .\clipboardcleaner.obj -s -o ClipboardCleaner.exe -nostartfiles -lkernel32 -luser32 -mwindows