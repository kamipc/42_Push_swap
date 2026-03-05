*This project has been created as part of the 42 curriculum by cpinho-c.*

# Push_swap

## Main objective

In this project you receive a varied amount of integers and you need to organize then in crescent order using a set number of instructions.
Also you have to try and be as eficient as possible doing it with the least instructions.
Those instructions are:

- `sa` or `swap a`: Swap the first 2 elements at the top of stack **a**.
- `sb` or `swap b`: Swap the first 2 elements at the top of stack **b**`.
- `ss`: **sa** and **sb** at the same time.
- `pa` or `push a`: Take the first element at the top of **b** and put it at the top of **a**.
- `pb` or `push b`: Take the first element at the top of **a** and put it at the top of **b**.
- `ra` or `rotate a`: Shift up all elements of stack **a** by 1, the first element becomes the last.
- `rb` or `rotate b`: Shift up all elements of stack **b** by 1, the first element becomes the last.
- `rr`: **ra** and **rb** at the same time.
- `rra` or `reverse rotate a`: Shift down all elements of stack **a**, the last element becomes the first.
- `rrb` or `reverse rotate b`: Shift down all elements of stack **b**, the last element becomes the first.
- `rrr`: **rra** and **rrb** at the same time.

## Instructions

- to clone the repository:
```
git clone https://github.com/kamipc/42_Push_swap.git
```
- then to enter the directory and compile the project:
```
cd 42_Push_swap
make
```
This will also clone the repository libft which is a dependency and compile it.

- then to run the program you have two options `./push_swap "list_of_numbers"` (a single argument with multiple numbers separated by spaces) or `./push_swap list of numbers` (all numbers being their own argumment), for example:

```
./push_swap "5 10 42 3 -1"
```

or 

```
./push_swap 5 10 42 3 -1
```

![image](https://github.com/user-attachments/assets/a219e723-6778-47f1-85cb-d5b4aec308ee)
