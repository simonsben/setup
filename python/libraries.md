# Package notes

## Pyplot

Pyplot is a friendly version/layer on top of matplotlib.
Pyplot is useful for debugging when working with image processing (and similar).
Some useful commands are:

* `plt.figure(figure_name)` starts a new figure and opens it
* `plt.imshow(image_array)` plots an image from an array (usually numpy)
  * Can add `cmap='gray'` to plot in greyscale
* `plt.show()` is effectively a blocking command that keeps the figure open
* `plt.save(file_name)` saves the figure (without openning)

### Install

Pyplot is installed as part of matplotlib and can be imported as `import matplotlib.pyplot as plt` for most applications. 

## Numpy

Numpy is a data library that gives type control and implements several functions in c.
Makes handling more data feasible.
Some useful commands are:

* `zeros(n)`
  * Instead of n, you could provide a shape (ex. (4, 4) for a 4x4 zero matrix)
* `full(n, value)`
  * Same as zeros, but allows you to specify the value
* `ones(n)`
  * Again, same idea but with ones
* `random.randint(bot, top, n)` is the same as the previous, but filling with random integers