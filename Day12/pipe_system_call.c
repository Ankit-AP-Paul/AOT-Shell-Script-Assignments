#include<stdio.h>
#include<unistd.h>
#include<sys/types.h>
#include<string.h>
#define MAX 100
int main() {
	int pid, fd[2];
	char s1[MAX]="Hello pipe\0", s2[MAX];
	pipe(fd);
	pid=fork();
	if(pid==0) {
		printf("Child Process\n");
		close(fd[1]);
		read(fd[0],s2,MAX);
		close(fd[0]);
		printf("s2 = %s\n",s2);
	}
	else {
		close(fd[0]);
		write(fd[1],s1,strlen(s1)+1);
		close(fd[1]);
	}
}
