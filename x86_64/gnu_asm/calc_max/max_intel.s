.intel_syntax noprefix

.section .data
#数组首地址,不需要声明为全局,仅在函数内部使用
data_items:
.long 3,67,34,44,65,356,34,0,357,234
# 碰到0终止循环

.section .text 
.globl _start
_start:
#edi寄存器保存数组当前位置, 比较完edi++,指向下一个数
mov edi, 0x0

#Init edi
mov eax, [edi*4+data_items]

#ebx保存临时最大值,eax保存当前要比较的数,在更新完edi之后就把下一个数读入eax
mov ebx, eax

start_loop:
#eax=0,到达末尾, 退出循环
cmp eax, 0x0 #相减,根据计算结果更新eflags寄存器的标志位,相等则标志位为1
#je读取标志位, 为1跳转
je loop_exit

# edi++, 并传入下一个数
inc edi
mov eax, [edi*4+data_items]

# 如果ebx>=eax,le表示小于等于less equal
# 标志位1,跳回loop开始
cmp eax, ebx
jle start_loop
# 否则更新ebx, 新的最大值
mov ebx, eax
#回到循环开始
jmp start_loop

#循环退出
loop_exit:
#调用syscall: _exit
mov eax, 0x1
int 0x80 # syscall
