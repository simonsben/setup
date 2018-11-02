# Notes

# Multiprocessing

The libraries are `multiprocessing` and `multiprocessing.dummy`, which are for multiprocessing and multithreading, respectively.
Threads should be used for applications where the execution time of the program is limited by factors like I/O operation.
**NOTE** multithreading still executes on a central process, so it would just add the cost of context switching in applications without I/O.
Processes should be used for applications with parallel processing requirements. 

Key functions for easy implementation are `pool` and `map`, which initialize a set of processes/threads and distribute jobs from an array to free processes/threads, respectively.
See example below for implementation example.

``` python
    from multiprocessing import Pool
    
    input_data - [...]
    process_pool = Pool(num_processes)

    output_data = process_pool.map(multi_function, input_data)

    process_pool.close()    # Closes processes once work is complete (non-blocking)
    process_pool.join()     # Joins processes (blocking)
```

