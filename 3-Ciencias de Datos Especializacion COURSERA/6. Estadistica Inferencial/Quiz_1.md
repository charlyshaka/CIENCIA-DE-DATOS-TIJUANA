#Quiz 1
======


Question 1
----------
Consider influenza epidemics for two parent heterosexual families. Suppose that the probability is 17% that at least one of the parents has contracted the disease. The probability that the father has contracted influenza is 12% while the probability that both the mother and father have contracted the disease is 6%. What is the probability that the mother has contracted influenza?

### Answer
>11%


### Explanation
A=Mother, B = Father, P(A?B)=17%, P(B)=12%, P(AnB)=6%. Since we know P(A?B)=P(A)+P(B)-P(AnB) we get 17%=P(A)+12%-6%.


Question 2
----------
A random variable, X is uniform, a box from 0 to 1 of height 1. (So that it's density is f(x)=1 for 0=x=1.) What is it's 75th percentile? 

### Answer
>0.75

### Explanation
This density looks like a box. The point so that the area below it is 0.75 is 0.75. Alternatively

Question 3
----------You are playing a game with a friend where you flip a coin and if it comes up heads you give her X dollars and if it comes up tails she gives you Y dollars. The probability that the coin is heads is p (some number between 0 and 1.) What has to be true about X and Y to make so that both of your expected total earnings is 0. (The game would then be called “fair”.)
### Answer
>p^-1-p=YX 

### Explanation
Your expected earnings is -pX+(1-p)Y=0 Then it must be the case that p1-p=YX Or that the ratio of the payouts has to equal the odds. So consider, for example, if p1-p=2. The game is 2 to 1 against you, p=2/3; she is twice as likely to win as you. Then she will have to pay out twice as much if you win to make the game fair.

Question 4
----------
You are playing a game with a friend where you flip a coin and if it comes up heads you give her 1 dollar and if it comes up tails she gives you one dollar. What would be the variance of your earnings?

### Answer
>1
### Explanation


Let X be random variables that take the value -1 with probability .5 and 1 with probability. Note that E[X]=0. Then Var(X)=.5(-1)2+.5(1)2=1. 

Question 5
----------
Let X1,…,Xn1 be random variables independent of Y1,…,Yn2, where both groups are iid with associated population means µ1 and µ2 and population variances s21 and s22, respectively. Let X¯ and Y¯ be their sample means. What is the variance of X¯+Y

### Answer
>s21n1+s22n2.

### Explanation
Var(X¯+Y¯)=Var(X¯)+Var(Y¯)=s21n1+s22n2.


Question 6
----------
If a random variable, X, is so that E[X]=µ  and Var(X)=s2   what is the mean and variance of Z=X-µs
### Answer
>Z has mean 0 and variance 1


### Explanation
E[Z]=E[X]-µs=0.
Var(Z)=1s2Var(X)=1.



Question 7
----------
A density that looks like a normal density, but is not known to be normal is exactly symmetric about zero. (Symmetric means if you flip it around zero it looks the same.) Does its median have to be zero? 

### Answer
>Yes, the median must be 0.

### Explanation
Yes, 50% of the mass is below zero.

Question 8
----------
Consider the following PMF generated in R

x <- 1:4
p <- x/sum(x)
temp <- rbind(x, p)
rownames(temp) <- c("X", "Prob")
temp
      [,1] [,2] [,3] [,4]
 X     1.0  2.0  3.0  4.0
Prob  0.1  0.2  0.3  0.4
What is the mean?

### Answer
>3

### Explanation
sum(x * p)
## [1] 3

