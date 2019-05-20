# Tensor Flow/Machine Learning Notes

These are personal notes taken while working through Google's [Tensor Flow Crash Course](https://developers.google.com/machine-learning/crash-course/).

## General

* Input is called **feature**
  * Also classifies the *shape* of the data
* Output called **label**
* Instance of a set of data is called an **example**
  * Can be **labelled** (training) and have both the feature and label
  * Can be **unlabelled** (testing) and be waiting for a prediction
* Relationship between input and output is the **model**
  * Model can be trained with labeled examples or tested using unlabeled exampled
  * Can have **regression** (continuous) or **classification** (discrete) models
* When a model is given labelled data to allow it to improve accuracy it is being **trained**
* When a model makes a prediction it is called an **inference**
* Loss is effectively the difference between the actual value and estimated value (using a labelled exampled).
  * **NOTE** how the loss is calculated is chosen based on the data and application
  * Ex. The Mean Squared Error for a dataset would be `MSE` = sum (`y` - `y'`)<sup>2</sup>

## Notation

* Given a set of inputs `x1, x2, x3` a prediction, `y`, can be made
* The correct label for something is denoted `y'`
* The inference relationship can be written `y = wx + b`, with `w` and `b` as the weight and bias values, resp.

## Gradient descent

* In practice neural networks have many local minimums
* Process of finding the minimum of the loss function iteratively
  * At each *step* the loss of the function is calculated, then the parameters are modified to *descend* the loss function
* Amount the neural network changes the parameters (to descend) is called the **learning rate**, which is proportional to the magnitude of the gradient of the loss.
* Can also reduce the size of the **batch** (set of data used to calculate the loss)
* Using one sample at a time to calculate the direction of the gradient is called **stochastic gradient descent** (SGD)
  * Shown empirically to work
* In practice a technique called **mini-batch stochastic gradient descent** is used, where the batch size is usually 10-1,000
