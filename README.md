# hello-world
"Hello-Arlo" in assembly

## quickstart
```
sudo apt install nasm
nasm -f elf64 hello-world.asm
ld -dynamic-linker /lib64/ld-linux-x86-64.so.2 -o hello-world hello-world.o
./hello-word
```
References:
* https://cs.lmu.edu/~ray/notes/nasmtutorial/
* https://www.mit.edu/afs.new/athena/system/rhlinux/redhat-6.2-docs/HOWTOS/other-formats/pdf/Assembly-HOWTO.pdf
* https://www.nasm.us/xdoc/2.15.05/nasmdoc.pdf
* http://www.egr.unlv.edu/~ed/assembly64.pdf

---
Have fun! 