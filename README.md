# Lab 11 - Counters and Dividers

In this lab, we learned how to make clock dividers from two types of counters.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Lab Questions

Summary: This lab explains why fast system clocks must be slowed down using clock dividers to be useful. It also goes through the two implementation methods, which were a modulo counter simpler ripple counter that were implemented onto the board. 

### 1 - Why does the Modulo Counter actually divide clocks by 2 * Count?
The modulo counter divides clocks by 2*Count because a full cycle requires two toggles, but the counter toggles only once when it reaches its target count (N). It must count to N twice (2*N) to complete one full output cycle. 

### 2 - Why does the ring counter's output go to all 1s on the first clock cycle?
The ring counter's output all goes to 1s on the first clock cycle because that "all 1s" state is a normal part of a counter's cycle, though it might not be the very first state after a reset. This behavior is caused by its inverted feedback. The counter "fills up" with 1s and then "fills up" with 0s. The "all 1s" state is just one of the valid steps in this 2*N (width) cycle. A counter takes the opposite output of the last flip-flop and feeds it into the input of the first one.

### 3 - What width of ring counter would you use to get to an output of ~1KHz?
To get from 100MHz (100,000,000 Hz) to ~1KHz (1,000 Hz), you need to divide by 100,000.
Calculation: 100,000 = 2 * N
Width (N): N = 50,000
You would need a counter with a width of 50,000 flip-flops.
