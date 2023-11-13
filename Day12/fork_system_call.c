#include<stdio.h>
#include<unistd.h>
#include<sys/types.h>
#include<sys/wait.h>

int main() {
	pid_t pid;
	pid=fork();
		fork();
	if(pid==0) { //child process 
		printf("Child: child process Id = %d, parent process Id = %d\n",getpid(), getppid());
	}
	else {	//parent process
		wait(NULL);
		printf("Parent: process Id = %d, parent process Id = %d\n",getpid(), getppid());
		printf("New Child = %d\n",pid);
	}
}

