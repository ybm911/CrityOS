#!/bin/sh

echo "Creating hd60M.img..."
bximage -mode=create -hd=5M -q hd60M.img

echo "Compiling..."
nasm -I include/ -o mbr.bin mbr.S
nasm -I include/ -o loader.bin loader.S

echo "Writing mbr and loader to disk..."
dd if=mbr.bin of=hd60M.img bs=512 count=1 conv=notrunc
dd if=loader.bin of=hd60M.img bs=512 count=2 seek=2 conv=notrunc
#   bs 设置块大小
#   一定记得 count 为 4 指定拷贝的块数
#   seek 在输出中查找此数量的块，而不是写入输出设备的最开始
#   复制特定数量的数据（count*bs）
#   第0个扇区 MBR，第1个扇区空的，第2个扇区是 loader
echo "Now start bochs and have fun!"
bochs -f bochsrc.disk
