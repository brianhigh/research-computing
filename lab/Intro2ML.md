# Intro to Statistical ML
Ali Shojaie and Noah Simon  
![CC BY-SA 4.0](cc_by-sa_4.png)  





<!--
## Agenda 

- Overview of Machine Learning (ML)
- Application of ML in biology
- A closer look into some ML tools
- Dangers and cautions
- Practice with ...
- New directions in ML (aka buzz words!)

-->

## What is Machine Learning? {.build}

![](Intro2ML_files/robot-reading.jpg)


## What is Machine Learning? {.build}

<img src="Intro2ML_files/mlwoordle.jpeg" height="400" width="700">


## What is Statistical Machine Learning? {.build}

Combining **data** and **analytical tools** to understand [biological] systems

Two types: **Supervised** and **Unsupervised**

__Supervised__: Looking at the relationship between **features** and a
specified **response** 

- (eg. regression, 2-sample tests) 

__Unsupervised__: **No response** -- looking for structure between
features. 

- (eg. clustering, dimension reduction, network analysis)


## A Simple Example {.build}

Suppose we have $n = 400$ people with diabetes for whom we have $p = 3$ serum-level measurements (_LDL_, _HDL_, _GLU_).
  
We wish to predict these peoples' disease progression after 1 year. 
(**Supervised**)


## A Simple Example

<div class="columns-2">

<img src="Intro2ML_files/lowd.png" height="300" width="200">

<br>
<br>

Notation:

  - $n$ is the number of observations.
  - $p$ the number of variables/features/predictors.
  - $y$ is a $n$-vector containing response/outcome for each of $n$ observations.
  - $X$ is a $n\times p$ data matrix.

</div>

## Linear Regression on a Simple Example
  
You can perform linear regression to develop a model to predict progression using _LDL_, _HDL_, and _GLU_:
\[
y = \beta_0 + \beta_1 X_1 + \beta_2 X_2 + \beta_3 X_3 + \varepsilon
\]
where $y$ is our continuous measure of disease progression, $X_1$, $X_2$, $X_3$ are our serum-level measurements, and $\varepsilon$ is a __noise__ term.


## A Relationship Between the Variables?

<div class="centered">
<img src="Intro2ML_files/pairplot.png" height="450" width="450">
</div>



## Supervised Learning {.build}

On each of $n$ patients measure 

$y_i$ --- an outcome

- (e.g. survival time/status, PCR)

$x_i$ --- $p$-vector of features

- (e.g. SNPs, gene expression, environmental exposure, etc)

**Supervised** learning connects $X$ to $y$

The canonical **supervised** problem is to build a **model** connecting **features to outcome**


## Supervised Learning {.build}

The **type** of model depends on the type of outcome:

_Continuous_: Linear Regression

- (e.g. % tumor shrinkage)

_Binary_: Logistic Regression

- (e.g. PCR, tumor-shrinkage-yes/no)

_Survival_: Cox Regression

- (e.g. PFS-time, OS-time)

One can also do fancier things---and we'll talk about some of these ideas---but the basic idea is the same!

<!-- But generally these (+ simple extensions) are enough -->


## Regression-based Learning  {.build}

These all _model outcome as a simple function of the features_:

**Linear**
\[
  y = \beta_0 + \beta_1\,feature_1 + \cdots + \beta_p\,feature_p + \varepsilon
\]

**Logistic** 
\[
  Prob(y = 1) = e^{[\ldots]}/(1 + e^{[\ldots]}) 
\]

**Cox**
\[
  Prob(\text{Failing at time } t) \propto e^{[\ldots]}
\]


## Regression-based Learning {.build}

Given Data/observations (outcome-feature pairs) 

- Estimate $\beta_0, \beta_1,\ldots,\beta_p$.

- Estimates are generally given with "hats": 
$\hat\beta_0, \hat\beta_1,\ldots,\hat\beta_p$. 

- Classically, estimates are chosen to "best fit" the data (e.g. line-of-best-fit/ least squares)

<div class="centered">
<img src="Intro2ML_files/linreg.png" height="300" width="450">
</div>

<!-- 

## What do we do with these models?

<div class="centered">
<img src="Intro2ML_files/linmod.png" height="450" width="500">
</div>

 -->

## What do we do with these models?  {.build}

After "fitting" the model to the data, we end up with an "_estimated model_"

For linear/logistic reg this can be used for **prediction**:
  
  - Are people living in larger cities more likely to have higher blood pressure?
  - Do children of farm-workers have a higher risk of chronic bronchitis?

Fancier (and non-model-based or algorithmic) methods also give **predictions**...(more about this later)

<div class="centered">
<img src="Intro2ML_files/pred.png" height="150" width="500">
</div>


## What do we do with these models?  {.build}

We can also use the model to calculate a score: 
\[
  score_i = \hat\beta_0 + \hat\beta_1 \, feature_{1,i} + \cdots + \hat\beta_p \, feature_{p,i}
\]
to e.g. **stratify patients** as high/med/low risk (for instance, for survival)

<div class="centered">
<img src="Intro2ML_files/stratified-surv.png" height="350" width="350">
</div>


## What do we do with these models?  {.build}

In addition to prediction/stratification, models are also used for **testing conditional/adjusted association**:

Is $feature_j$ associated with outcome $y$ after adjusting for other features?

 - To do this, you test if $\beta_j = 0$ (using $\hat\beta_j$) 
 - In "classical" settings, software will generally do this for you


## Wait, isn't this what we always do?!  {.build}

Yes and No!

The principles are the same, but the data we are dealing with is very different.

- In classical, **low-dimensional problems**: $n \gg p$

- Lots of BIG data sets coming out of modern biological techniques are **high-dimensional**: $n \approx p$ or $n \ll p$   

- Remember: ML = combining **data** and **analytical tools**

- The new **Big Data** pose **new challenges** for statistical analysis!


## Gene Expression Data

<div class="centered">
<img src="Intro2ML_files/expression.png" height="350" width="350">
</div>

## DNA Sequence Data

<div class="centered">
<img src="Intro2ML_files/dna.png" height="450" width="700">
</div>

## DNAse Hypersensitivity Data

<div class="centered">
<img src="Intro2ML_files/dnase.png" height="400" width="700">
</div>

## Metabolomics Data

<div class="centered">
<img src="Intro2ML_files/metabolomic.png" height="400" width="600">
</div>


## Low-Dimensional 

<div class="centered">
<img src="Intro2ML_files/lowd.png" height="350" width="250">
</div>


## High-Dimensional 

<div class="centered">
<img src="Intro2ML_files/highd.png" height="300" width="700">
</div>


## Analysis of High-Dimensional Data {.build}

For most biomedical big data analyses, we have many more variables than observations... i.e. $p \gg n$

  - Predict risk of diabetes on the basis of DNA sequence data.... using $n = 1000$ patients and $p = 3000000$ variables 
  - Identify genes whose expression is associated with survival time... using $n = 250$ cancer patients and $p = 20000$ variables 


## Dangers!! {.bulid}

With these data, we run a high risk of fitting **models that look great on our data**...

But **perform terribly on future data/in the clinic**

Even very simple tasks, like identifying variables that are associated with a response, must be done with care

<div class="centered">
<img src="Intro2ML_files/caution.png" height="350" width="250">
</div>


## The Diabetes Data


```r
library(lars)

data(diabetes)
attach(diabetes)
# ?diabetes
dim(x)
```

```
## [1] 442  10
```

```r
colnames(x)
```

```
##  [1] "age" "sex" "bmi" "map" "tc"  "ldl" "hdl" "tch" "ltg" "glu"
```


## The Diabetes Data

Let's look at the associations of different variables with y (only numerical variables)


```r
attach(diabetes)
par(mfrow=c(2,4), mar=c(4,4,1,1))
for(i in 3:ncol(x)) plot(x[,i], y, xlab=colnames(x)[i])
```

![](Intro2ML_files/figure-html/plot1-1.png)\



## The Diabetes Data

Let's take a "training" subset of the diabetes data


```r
attach(diabetes)

set.seed(1)
ind <- sample(1:nrow(x), 2*nrow(x)/3)
x.trn <- x[ind,]
y.trn <- y[ind]

x.tst <- x[-ind,]
y.tst <- y[-ind]
```


## The Diabetes Data

Simple linear regression of $y$ on $bmi$


```r
bmi.trn <- x.trn[,3]
bmi.tst <- x.tst[,3]

library(ggplot2)
qplot(bmi.trn, y.trn) + geom_smooth(method=lm)
```

<img src="Intro2ML_files/figure-html/simple reg1-1.png" title="" alt="" style="display: block; margin: auto;" />


## The Diabetes Data

Simple linear regression of $y$ on $bmi$


```r
fit <- lm(y.trn ~ bmi.trn)
mysummary(fit)
```

```
## Call:
## lm(formula = y.trn ~ bmi.trn)
##             Estimate Std. Error t value Pr(>|t|)    
## (Intercept)  151.769      3.666   41.40   <2e-16 ***
## bmi.trn      963.181     74.700   12.89   <2e-16 ***
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
## Residual standard error: 62.85 on 292 degrees of freedom
## Multiple R-squared:  0.3628,	Adjusted R-squared:  0.3606 
## F-statistic: 166.3 on 1 and 292 DF,  p-value: < 2.2e-16
```

- Not a very good $R^2$!


## The Diabetes Data

What is the error of this model?


```r
yhat <- predict(fit)
mean((y.trn-yhat)^2)   # MSE-train
```

```
## [1] 3923.465
```

How well can we predict the outcome of **new patients**?

  - this is why we separated the data into *training* and *test* samples


```r
yhat <- coef(fit)[1] + coef(fit)[2] * bmi.tst
mean((y.tst-yhat)^2)   # MSE-test
```

```
## [1] 3826.559
```


## The Diabetes Data

Perhaps our model is **too simple**

  - can we get improve the prediction by including the other variables?

## The Diabetes Data


```r
fit <- lm(y.trn ~ x.trn)
mysummary(fit)
```

```
## Call:
## lm(formula = y.trn ~ x.trn)
##             Estimate Std. Error t value Pr(>|t|)    
## (Intercept)  153.611      3.156  48.672  < 2e-16 ***
## x.trnage      57.847     74.731   0.774 0.439536    
## x.trnsex    -209.512     76.450  -2.740 0.006525 ** 
## x.trnbmi     535.421     80.442   6.656 1.46e-10 ***
## x.trnmap     307.526     78.705   3.907 0.000117 ***
## x.trntc     -230.893    516.518  -0.447 0.655203    
## x.trnldl     -20.022    415.840  -0.048 0.961633    
## x.trnhdl    -157.858    260.814  -0.605 0.545498    
## x.trntch      47.189    198.839   0.237 0.812577    
## x.trnltg     626.756    205.083   3.056 0.002456 ** 
## x.trnglu      61.950     83.576   0.741 0.459163    
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
## Residual standard error: 53.89 on 283 degrees of freedom
## Multiple R-squared:  0.5459,	Adjusted R-squared:  0.5299 
## F-statistic: 34.02 on 10 and 283 DF,  p-value: < 2.2e-16
```

- Much better $R^2$!!

## The Diabetes Data

What is the error of this model?


```r
yhat <- predict(fit)
mean((y.trn-yhat)^2)   # MSE-train
```

```
## [1] 2795.948
```

Smaller training error...

How well does this model predict?


```r
yhat <- coef(fit)[1] + x.tst %*% matrix(coef(fit)[-1],ncol=1)
mean((y.tst-yhat)^2)   # MSE-test
```

```
## [1] 3112.655
```

Smaller **test error**, too


## The Diabetes Data

What about a more complex model?

The x2 data set includes (important) interaction terms among features and a total of 64 variables


```r
x2.trn <- diabetes$x2[ind,]
x2.tst <- diabetes$x2[-ind,]

fit <- lm(y.trn ~ x2.trn)
```

What is the error of this model?

```r
yhat <- predict(fit)
mean((y.trn-yhat)^2)   # MSE-train
```

```
## [1] 2082.747
```
Even smaller **training error**...


## The Diabetes Data

How well does this model predict?

```r
yhat <- coef(fit)[1] + x2.tst %*% matrix(coef(fit)[-1],ncol=1)
mean((y.tst-yhat)^2)   # MSE-test
```

```
## [1] 5207.723
```
Hmm...the **test error** became *much* larger!!



## Dangers!! {.build}

Classical model-fitting works looks at *how well the model fits the data*

Not particularly interested in **_Training Error_**:

 - Performance of the model on **original (training) data**

Interested in **_Test Error_** (aka **_Generalization Error_**):

  - Performance of the model on **future (unseen) data**

</br>

*Models always look better on data used for training*!

  - Improved Training performance $\not\rightarrow$ Better Test Error

</br>

**Test Error** determines **_reproducibility_**/**_generalizability_** of the model/results!


## Dangers!! {.build}

**Training Error** vs **Test Error**

**Increasing complexity** of model always *improves training error*:

  - Adding features
  - Adding complex interactions 
  - Allowing complicated nonlinear fits

**Increasing complexity** often *hurts test error*; when complexity doesn???t capture strong signal

  - Not enough data to support degree of complexity


## Dangers!! {.build}

<div class="centered">
<img src="Intro2ML_files/linex.png" height="350" width="700">
</div>


## Dangers!! {.build}

When the model is too complex/adaptive/flexible

  - (i.e. Training Performance $>>$ Test Performance)
  
We say that we are **overfitting**

  - (i.e. fit to noise rather than just signal)


## Dangers!! {.build}

<div class="centered">
<img src="Intro2ML_files/r2traintest.png" height="250" width="800">
</div>

</br>

To protect against overfitting...

  - we need to estimate the **test error** 
  - use that to **control the model complexity**

## How to protect against over-fitting? {.build}

Can't using just the training data...add **validation data**!

  - Split the **training data** into *training* and *validation* sets
  - *Fit the model on training set*, and **evaluate on validation set**

<div class="centered">
<img src="Intro2ML_files/trainlock.png" height="200" width="450">
</div>


## How to protect against over-fitting? {.build}

Can't we just use the **test data** to check how our model perform?
  
  - Unfortunately, **_NO_**!
  - The problem is that if you look at **multiple models** and check how they perform on the **test data**, then your *test data is used in the model fitting process*!!
  - Then your prediction performance would be artificially good and **not reproducible**

So, we need **three** data sets
  
  - **training set**: this is what we use to fit our model
  - **validation set**: this is what we use to evaluate our model---it's OK to peek into this data to check how our models are doing!
  - **test set**: this is what we **_don't touch_**! Basically, we pretend that we don't even have access to this data and it's **locked out** (ideally, this is how it should be done!)

Fancier version of this strategy exists and are called **Cross-Validation** 
  
  - They allow *more efficient use of data*




## How to control the model complexity?

So, we discussed how to *estimate the generalization error*

But, how can we *control the model complexity*?

  - A large (and growing) literature on model complexity and model selection within machine learning and statistics
  - We will discuss a few basic ideas here...but again, there's much more out there!
  
## How to control the model complexity?

Let's look at the *diabetes* data again, but this time 
  - we first create a *data.frame* to make things simpler
  - we further *split our training data* into **training** and **validation**


```r
attach(diabetes)
dat <- data.frame(cbind(x,y))

set.seed(2)
ind <- sample(1:3, nrow(dat), replace=TRUE, prob=rep(1/3,3))
table(ind)
```

```
## ind
##   1   2   3 
## 151 166 125
```

```r
dat.trn <- dat[(ind==1),]
dat.vld <- dat[(ind==2),]
dat.tst <- dat[(ind==3),]

fit <- lm(y~., data=dat.trn)
```

## How to control the model complexity?

```r
mysummary(fit)
```

```
## Call:
## lm(formula = y ~ ., data = dat.trn)
##             Estimate Std. Error t value Pr(>|t|)    
## (Intercept)   150.94       4.67  32.318  < 2e-16 ***
## age           -11.63     108.18  -0.108 0.914514    
## sex          -319.76     120.56  -2.652 0.008917 ** 
## bmi           644.21     130.01   4.955 2.06e-06 ***
## map           410.44     120.93   3.394 0.000896 ***
## tc            165.37     829.28   0.199 0.842229    
## ldl          -175.78     690.94  -0.254 0.799556    
## hdl          -431.26     428.08  -1.007 0.315473    
## tch           112.53     292.55   0.385 0.701085    
## ltg           158.93     345.21   0.460 0.645965    
## glu           -56.49     124.42  -0.454 0.650516    
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
## Residual standard error: 56.15 on 140 degrees of freedom
## Multiple R-squared:  0.5275,	Adjusted R-squared:  0.4937 
## F-statistic: 15.63 on 10 and 140 DF,  p-value: < 2.2e-16
```
So, not all the variables are equally *associated* with $y$


## How to control the model complexity?

Intuitively, variables that are more strongly associated with $y$ should give us better prediction

And, we *can* now look at the **validation error** to assess this

Let see what happens if we take the subset of *significant* variables...

```r
yhat <- predict(fit, newdata=dat.vld)
( MSE.1 <- mean((dat.vld$y - yhat)^2) ) #MSE-validation
```

```
## [1] 3066.274
```

```r
fit <- lm(y~sex+bmi+map, data=dat.trn)

yhat <- predict(fit, newdata=dat.vld)
( MSE.2 <- mean((dat.vld$y - yhat)^2) ) #MSE-validation
```

```
## [1] 3586.46
```
Hmm, looks like this doesn't work!


## How to control the model complexity?

The problem with the previous strategy is that it's *ad hoc*: 
there is **no guarantee that the subset of significant variables gives the best prediction error**!!

Instead, what we really want is to **find the best subset of variables that gives the best prediction**


## How to control the model complexity?

To find the **best** model for prediction, we can *search over all possible subsets of variables*
  - we can do this using the *leaps* package 


```r
library(leaps)
p <- ncol(dat)-1
fit <- regsubsets(y~., data=dat.trn)
summary(fit)$outmat
```

```
##          age sex bmi map tc  ldl hdl tch ltg glu
## 1  ( 1 ) " " " " "*" " " " " " " " " " " " " " "
## 2  ( 1 ) " " " " "*" "*" " " " " " " " " " " " "
## 3  ( 1 ) " " " " "*" "*" " " " " " " " " "*" " "
## 4  ( 1 ) " " "*" "*" "*" " " " " "*" " " " " " "
## 5  ( 1 ) " " "*" "*" "*" " " " " "*" " " "*" " "
## 6  ( 1 ) " " "*" "*" "*" " " " " "*" " " "*" "*"
## 7  ( 1 ) " " "*" "*" "*" " " " " "*" "*" "*" "*"
## 8  ( 1 ) " " "*" "*" "*" " " "*" "*" "*" "*" "*"
```

## How to control the model complexity?

Which one of the above 8 models gives the best prediction?

  - We can answer this using our **validation data**


```r
vld.err <- numeric(8)
for (i in 1:8) {
    yhat <- predict(fit, newdata=dat.vld, id=i)
    vld.err[i] <- mean((dat.vld$y - yhat)^2)
}
par(mar=c(4.5,4.5,0.1,0.1))
plot(vld.err, ylab="MSE", xlab="Model Size", ylim=c(2900,4000), pch=19, type="b")
```

<img src="Intro2ML_files/figure-html/modsel 5-1.png" title="" alt="" style="display: block; margin: auto;" />


## How to control the model complexity?

The above strategy is called **best subset selection** and we can use it to find the best possible model!

However, this strategy only works if we have a few variables

  - there are $2^p$ possible subsets for a model of size $p$
  - so, for the x2 data set, with $p=64$, we would need to search over 1.8446744\times 10^{19} possible models
  - in fact the default option in *reg.subsets()* is to limit the maximum size of the subsets to 8 variables 

**Exercise**: using the *diabetes* data

- Redo the best subset selection for x
- Repeat the analysis for all 10 variables in x


## Things that we won't talk about here

Methods for building models which:

  - automatically select important features
  - allow smooth/structured/fancy non-linear fits
  - inference in high dimensions (very new and hot topic)

Many other approaches:

  - Lasso, etc
  - Random Forests
  - Support Vector Machines
  - Neural Nets
  - Deep Learning
  - ...


## Unsupervised Learning {.build}

**Supervised** Learning relates $X$ to $y$

<div class="centered">
<img src="Intro2ML_files/sup.png" height="250" width="350">
</div>


## Unsupervised Learning {.build}

**Unsupervised** Learning looks for connections only within $X$

<div class="centered">
<img src="Intro2ML_files/unsup.png" height="250" width="300">
</div>

- **clustering** (hierarchical clustering, k-means clustering, etc)
- **dimension reduction** (PCA, MDS, etc)
- **network analysis** (graphical models, etc)

## Now you know how "machines learn!" {.build}

![](Intro2ML_files/robot-grad.png)

\[
\,
\]

But if you want to learn more, you can take **BIOST 546** in spring!
