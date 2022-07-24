# hello-world
"Hello-Arlo" in assembly

## quickstart Linux
```
sudo apt install nasm
nasm -f elf64 hello-world.asm
ld -dynamic-linker /lib64/ld-linux-x86-64.so.2 -o hello-world hello-world.o
./hello-word
```

If you want to disassemble your code (or other piece of code to learn) you can use `objdump` as follows:

```
$ objdump --disassemble-all  --sym  hello-world

hello-world:     file format elf64-x86-64

SYMBOL TABLE:
0000000000401000 l    d  .text  0000000000000000 .text
0000000000402000 l    d  .data  0000000000000000 .data
0000000000000000 l    df *ABS*  0000000000000000 hello-world.asm
0000000000402000 l       .data  0000000000000000 msg
000000000000000b l       *ABS*  0000000000000000 len
0000000000401000 g       .text  0000000000000000 _start
000000000040200b g       .data  0000000000000000 __bss_start
000000000040200b g       .data  0000000000000000 _edata
0000000000402010 g       .data  0000000000000000 _end

Disassembly of section .text:

0000000000401000 <_start>:
  401000:       ba 0b 00 00 00          mov    $0xb,%edx
  401005:       b9 00 20 40 00          mov    $0x402000,%ecx
  40100a:       bb 01 00 00 00          mov    $0x1,%ebx
  40100f:       b8 04 00 00 00          mov    $0x4,%eax
  401014:       cd 80                   int    $0x80
  401016:       b8 01 00 00 00          mov    $0x1,%eax
  40101b:       cd 80                   int    $0x80

Disassembly of section .data:

0000000000402000 <msg>:
  402000:       48                      rex.W
  402001:       65 6c                   gs insb (%dx),%es:(%rdi)
  402003:       6c                      insb   (%dx),%es:(%rdi)
  402004:       6f                      outsl  %ds:(%rsi),(%dx)
  402005:       20 41 72                and    %al,0x72(%rcx)
  402008:       6c                      insb   (%dx),%es:(%rdi)
  402009:       6f                      outsl  %ds:(%rsi),(%dx)
  40200a:       0a                      .byte 0xa
```
> Clearly the `.data` section is hard to interpret like this, so you may also try using `hexdump` to get a view of the `.data` section. We use a length of `0xb` because we start counting at 0, and our starting position is `0x2000` because from the disassembly of `hexdump -C hello-world` we see the data starting at `00002000` and this seems to align with the dump above too. 

```
$ hexdump -C hello-world -s 0x2000 -n 0xb
00002000  48 65 6c 6c 6f 20 41 72  6c 6f 0a                 |Hello Arlo.|
0000200b
```


## quickstart Win

`https://stackoverflow.com/questions/1023593/how-to-write-hello-world-in-assembler-under-windows`
> I don't have a windows machine so have not yet tried any of this although I recall from ~30 years ago that `int 21h` was the goto syscall for DOS!

---

References:
* https://cs.lmu.edu/~ray/notes/nasmtutorial/
* https://www.mit.edu/afs.new/athena/system/rhlinux/redhat-6.2-docs/HOWTOS/other-formats/pdf/Assembly-HOWTO.pdf
* https://www.nasm.us/xdoc/2.15.05/nasmdoc.pdf
* http://www.egr.unlv.edu/~ed/assembly64.pdf
* https://second.wiki/wiki/int_80h
* http://www.int80h.org/
* https://www.cs.uaf.edu/2008/fall/cs301/lecture/12_03_operating_system.html

Videos:
* https://www.youtube.com/watch?v=j--zbDv_2QQ
* https://www.youtube.com/watch?v=75gBFiFtAb8
* https://www.youtube.com/watch?v=JlZe2JwrJqM
* https://www.youtube.com/watch?v=b0zxIfJJLAY&t=199s
* 
---
Have fun! 