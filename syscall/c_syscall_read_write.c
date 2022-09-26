#include<unistd.h>
#include<string.h>

int main(int argc, char** argv)
{
	char buf[64];
	char* err_msg="open file error\n";
	char* success_msg="open file success\n";

	int fd=open("readme.txt",0,0);
	if(fd==-1){
		write(0,err_msg,strlen(err_msg));
		return -1;
	}

	write(0,success_msg,strlen(success_msg));

	read(fd, buf, 64);
	close(fd);
	return 0;
}
