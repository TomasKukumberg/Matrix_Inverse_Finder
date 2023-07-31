# Matrix Inverse Finder
A genetic algorithm aproach to find an inverse to a 3x3 matrix.

## Tech stack
<img src="https://skillicons.dev/icons?i=matlab" />

## Algorithm
1. Get an input(matrix) from a user
2. Generate a random population which represents an inverted matrix
3. Loop all matrices and compare them with the inputted one, calculate the fitness function (difference between an inputted one and a generated one)
4. Pick K best from N population
5. Mutate and random generate the rest (N-K)
6. Go to step 3.

---

## Examples of running the algorithm

### Legend
          inputMat:inputted matrix from a user
          matrixOfBest: inverse found by the genetic algorithm
          inverseOfInput: actual inverse
          errorSizeFinal : error of genetic algorithm
          
![](/git_img/inverse.PNG)

![](/git_img/inverse2.PNG)

![](/git_img/inverse3.PNG)
