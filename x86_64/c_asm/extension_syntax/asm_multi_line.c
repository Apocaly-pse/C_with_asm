int main(){
	asm("movl $1, %eax\n\t"
	"movl $4, %ebx\n\t"
	"int $0x80");
	return 0;
}
