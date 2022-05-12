nasm -f win32 Prank.asm -o Prank.obj
golink /entry:Start kernel32.dll user32.dll Prank.obj