# Tensorflow notes

## General

* Input is called **feature**
  * Also classifies the *shape* of the data
* Output called **label**
* Instance of a set of data is called an **example**
  * Can be **labelled** (training) and have both the feature and label
  * Can be **unlabelled** (testing) and be waiting for a prediction
* Relationship between input and output is the **model**
  * Model can be trained with labeled examples or tested using unlabeled exampled
  * Can have **regression** (continuous) or **classification** models
* When a model makes a prediction it is called an **inference**
* Loss is effectively the difference between the actual value and estimated value (using a labelled exampled).
  * **NOTE** how the loss is calculated is chosen based on the data and application

## Gradient descent

* In practice neural networks have many local minimums
* Process of finding the minimum of the loss function itteratively
  * At each *step* the loss of the function is calculated, then the parameters are modified to *descend* the loss function
* Amount the neural network changes the parameters (to descend) is called the **learning rate**, which is proportional to the magnitude of the gradient of the loss.
* Using one sample at a time to calculate the direction of the gradient is called **stochastic gradient descent**
  * Shown empirically to work
* In practice a technique called **mini-batch gradient descent** is used, where a subsection of the data is used
