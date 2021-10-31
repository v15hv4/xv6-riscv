# Enhancing xv6 OS
> Vishva Saravanan R
> 2019113019

## 1: syscall tracing
```
Usage: strace mask command [args]
```
Trace the system calls specified by mask for the specified command.

## 2: scheduling
The OS can use 2 possible scheduling policies: First Come First Serve (FCFS) and 
Round Robin (RR). 
The policies can be specified at compile time by the makefile macro `SCHEDULER=<scheduler>`. 
Round Robin is the default scheduling policy.

## 3: procdump
The procdump function has been extended to display the following additional attributes:
- `rtime`: Total ticks for which the process ran on the CPU till now
- `wtime`: The total waiting time for the process
- `nrun`: The number of times the process was picked by the scheduler
procdump can be invoked by Ctrl+P.
