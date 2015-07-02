#Quiz 1
======


Question 1
----------
When at the free-throw line for two shots, a basketball player makes at least one free throw 90% of the time. 80% of the time, the player makes the first shot, 80% of the time the player makes the second shot and 70% of the time she makes both shots. What is the conditional probability that the player makes the second shot given that she missed the first?
### Answer
>50%


### Explanation
Let A be the event that the player makes the first shot and B be the event that she makes the second. Then, P(A?B)=.9, P(A)=.8, P(AnB)=.70. Then P(B)=.8. We want P(B|Ac)=P(BnAc)/P(Ac)=P(B)-P(AnB)P(Ac). Thus, it is .8-.7.2=50%


Question 2
----------
A web site (www.medicine.ox.ac.uk/bandolier/band64/b64-7.html) for home pregnancy tests cites the following: “When the subjects using the test were women who collected and tested their own samples, the overall sensitivity was 75%. Specificity was also low, in the range 52% to 75%.” Assume the lower value for the specificity. Suppose a subject has a positive test and that 30% of women taking pregnancy tests are actually pregnant. What number is closest to the probability of pregnancy given the positive test?

### Answer
>40%

### Explanation
P(Preg|+)=P(+|Preg)P(Preg)P(+|Preg)P(Preg)+P(+|Pregc)P(Pregc)=.75×.30.75×.30+(1-.52)×(1-.3)˜0.40

Question 3
----------
Suppose that diastolic blood pressures (DBPs) for men aged 35-44 are normally distributed with a mean of 80 (mm Hg) and a standard deviation of 10. About what is the probability that a random 35-44 year old has a DBP less than 70About?
### Answer
>16%

### Explanation
pnorm(70, mean = 80, sd = 10)
## [1] 0.1587


Question 4
----------
Brain volume for adult women is normally distributed with a mean of about 1,100 cc for women with a standard deviation of 75 cc. About what brain volume represents the 95th percentile?
### Answer
>1223
### Explanation

qnorm(0.95, mean = 1100, sd = 75)
## [1] 1223


Question 5
----------
Refer to the previous question. Brain volume for adult women is about 1,100 cc for women with a standard deviation of 75 cc. Consider the sample mean of 100 random adult women from this population. Around what is the 95th percentile of the distribution of that sample mean? 

### Answer
>1112 cc

### Explanation
qnorm(0.95, mean = 1100, sd = 75/sqrt(100))
## [1] 1112



Question 6
----------
You flip a fair coin 5 times, about what's the probability of getting 4 or 5 heads?
### Answer
>19%


### Explanation
(54)2-5+(55)2-5˜19%
pbinom(3, size = 5, prob = 0.5, lower.tail = FALSE)
## [1] 0.1875




Question 7
----------
The respiratory disturbance index (RDI), a measure of sleep disturbance, for a specific population has a mean of 15 (sleep events per hour) and a standard deviation of 10. They are not normally distributed. Give your best estimate of the probability that a sample mean RDI of 100 people is between 14 and 16 events per hour?

### Answer
>68%

### Explanation
The standard error of the mean is 10/100---v=1. Thus between 14 and 16 is with one standard deviation of the mean of the distribution of the sample mean. Thus it should be about 68%.
pnorm(16, mean = 15, sd = 1) - pnorm(14, mean = 15, sd = 1)
## [1] 0.6827


Question 8
----------
Consider a standard uniform density. The mean for this density is .5 and the variance is 1 / 12. You sample 1,000 observations from this distribution and take the sample mean, what value would you expect it to be near?
### Answer
>0.5

### Explanation
Via the LLN it should be near .5. 

Question 9
----------
Consider a standard uniform density. The mean for this density is .5 and the variance is 1 / 12. You sample 1,000 sample means where each sample mean is comprised of 100 observations. You take the standard deviation of the 1,000 sample means. About what number would you expect it to be?

### Answer
>0.03
### Explanation


The sd of the sample mean is 
1/12×100-------v=0.0289


Question 10
----------
The number of people showing up at a bus stop is assumed to be Poisson with a mean of 5 people per hour. You watch the bus stop for 3 hours. About what's the probability of viewing 10 or fewer people?
### Answer
>0.12

### Explanation
ppois(10, lambda = 15)
## [1] 0.1185


Question 11
----------
You place 9 balls into a bag labeled 1 to 9 and take three out. How many different combinations of 3 balls (disregarding order) can you get?
### Answer
>84

### Explanation
choose(9, 3)
## [1] 84




