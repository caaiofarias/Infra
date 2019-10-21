#load immediate
li x8,0x10010000
addi x1,x0,1
sw x1,0(x8)
addi x1,x0,3
sw x1,4(x8)
addi x1,x0,2
sw x1,8(x8)
addi x1,x0,1
sw x1,12(x8)
addi x1,x0,4
sw x1,16(x8)
addi x1,x0,5
sw x1,20(x8)

li x9,0x10010020
lw x1,0(x8)
slli x1,x1,1
sw x1,0(x9)
lw x1,4(x8)
slli x1,x1,1
sw x1,4(x9)
lw x1,8(x8)
slli x1,x1,1
sw x1,8(x9)
lw x1,12(x8)
slli x1,x1,1
sw x1,12(x9)
lw x1,16(x8)
slli x1,x1,1
sw x1,16(x9)
lw x1,20(x8)
slli x1,x1,1
sw x1,20(x9)

#somar o proprio array
lw x1,0(x8)
lw x2,4(x8)
add x3,x1,x2
sw x3,(x10)

