# Notes

# General

## Exporting packages

The environment (specifically the packages you use) can be exported using the command `pip freeze > requirements.txt`, which prints a list of packages to a file called `requirements.txt`.
To install packages using one of these lists simply run `pip install -r requirements.txt` (NOTE: in this case the file would have to be in the local directory).
In general it would be better if this was run while in a python virtual environment, preventing the command from installing packages to the global library.

# Overriding functions

There are standard functions that you can override for commonly used actions (such as `__str__`). 
Examples are:

* `__init__` is the object constructor
* `__str__` converts the object to a string (ex. when `print(ex_object)`)
* `__len__` is called when the length of an object is *requested* (i.e. `len(ex_object)`)
* `__iter__` is called at the beginning of a `for ob in ex_object:` call
* `__next__` is called during the `for ob in ex_object:` loop
* `__deepcopy__` allows for a custom deep copy action (ex. use when object has pools or locks)

# Multiprocessing

The libraries are `multiprocessing` and `multiprocessing.dummy`, which are for multiprocessing and multithreading, respectively.
Threads should be used for applications where the execution time of the program is limited by factors like I/O operation.
**NOTE** multithreading still executes on a central process, so it would just add the cost of context switching in applications without I/O.
Processes should be used for applications with parallel processing requirements. 

Key functions for easy implementation are `pool` and `map`, which initialize a set of processes/threads and distribute jobs from an array to free processes/threads, respectively.
See example below for implementation example.

``` python
from multiprocessing import Pool

input_data = [...]
process_pool = Pool(num_processes)

output_data = process_pool.map(multi_function, input_data)

process_pool.close()    # Closes processes once work is complete (non-blocking)
process_pool.join()     # Joins processes (blocking)
```

Once the pool is no longer going to be used it is good practice to call `Pool.close()` then `Pool.join()`.
The `Pool.close()` tells the processes/threads to kill themselves after all jobs have been completed (**NOTE** this call is non-blocking).
The `Pool.join()` effectively gets the main process to wait until all jobs complete, returning the program to being synchronous (basically). 

## Locks

Alternatively/additionally locks can be used to prevent corruption of an object (for example).
Below is an example of a simple use of a lock.

``` python
from multiprocessing import Lock

class ex_object:
    def __init__(self, id):
        self.id = id
        self.count = 0
        self.lock = Lock()
    
    def add_to_count(self):
        self.lock.acquire()
        self.count += 1
        self.lock.release()
```
