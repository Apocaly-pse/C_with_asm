# simple program that exists and returns a status code back to the Linux Kernel


# .section 分段,.data 相当于全局变量,保存可读可写数据
.section .data

# 保存代码,只读可执行
.section .text

# 符号,代表地址,(函数名)
.globl _start 
# 程序的入口地址,相当于main()
_start: 
# 数据传送,立即数1给寄存器eax
movl $1, %eax

movl $4, %ebx
# int: 软中断指令, 产生异常,
# CPU从用户模式切换到特权模式, 跳转到内核代码执行异常处理程序
# 立即数0x80是一个参数, 用于执行系统调用

# eax的值是系统调用号,_exit的系统调用号是1, ebx的值是传给_exit的参数,表示退出状态
int $0x80
