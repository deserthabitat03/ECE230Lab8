# Multiplexers and Demultiplexers

In this lab you have learned about multiplexers and demultiplexers.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Names

Seth Walowski
Will White

## Summary

In this lab we created multiplexers ande demultiplexers using verilog code. Each file supports 4-bit inputs with a 2-bit switch. The first mux file uses 4 inputs of 4-bit numbers using the switches, and the switch case is controlled using two buttons. The second demux file uses 1 4-bit input and outputs this input to 4 4-bit output LEDs based on the switch case also controlled by two buttons. Each file uses an enabler. These multiplexer files are simple and expandable for future labs, and we used this muxes to control a basic internet service router. We also learned how to use concatenation and the <condition> ? <true> : <false> operator.

## Lab Questions

### In plain English describe the function and use of a multiplexer.

The mux takes in multiple inputs and a select (like a switch), and based off value of the switch the mux outputs one of the multiple inputs.

### In plain English describe the function and use of a demultiplexer.

A demux is the inverse to a mux, where a mux selects one of multiple inputs to output, the demux only takes one input and selects one of many outputs. The demux takes in an input and a select (like a switch), and based off the value of the switch the demux outputs one of its multiple possible outputs. 

### What other uses might these circuits have? (Think Shannon’s)

Multiplexers can be used to represent any boolean equation that relies on a set of inputs for almost every OR case. We can redraw those circuits using shannon's law to be multiplexers. These symbols and simplify our circuits.

