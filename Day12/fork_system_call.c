#include<stdio.h>
#include<unistd.h>
#include<sys/types.h>
#include<sys/wait.h>

int main() {
	pid_t pid;
	pid=fork();
	    fork();
	// no. of processes = 2^n where n is number of fork() calls
	// no. of child processes created = 2^n - 1 
	if(pid==0) { //child process 
		printf("Child: child process Id = %d, parent process Id = %d\n",getpid(), getppid());
	}
	else {	//parent process
		wait(NULL);
		printf("Parent: process Id = %d, parent process Id = %d\n",getpid(), getppid());
		printf("New Child = %d\n",pid);
	}
}

