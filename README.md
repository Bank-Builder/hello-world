# hello-world
"Hello-Arlo" in assembly

## quickstart Linux
```
sudo apt install nasm
nasm -f elf64 hello-world.asm
ld -dynamic-linker /lib64/ld-linux-x86-64.so.2 -o hello-world hello-world.o
./hello-word
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
* 
---
Have fun! 