---
title: "Mixtape-style R code translations"
date: "2021-01-04"
menu:
  resource:
    parent: Guides
type: docs
weight: 5
toc: true
---
<script src="/rmarkdown-libs/kePrint-0.0.1/kePrint.js"></script>
<link href="/rmarkdown-libs/lightable-0.0.1/lightable.css" rel="stylesheet" />



[*Causal Inference: The Mixtape*](https://mixtape.scunning.com/) includes code examples in both Stata and R, which is so cool! The previous PDF-only version of the book only had Stata code, so it was hard to follow along with in this class.

As you'll note throughout this class, there are lots of ways to do things in R. You'll come across code in the RStudio forums and on StackOverflow that works, but looks slightly different than you're used to. In this class, we use the [tidyverse](), or a set of packages that all work together nicely like **ggplot2**, **dplyr**, and others. 

*The Mixtape* also uses tidyverse (yay!), but has a couple code quirks and differences. Because the HTML version of the book (with R code) only came out on January 3, I haven't had time to find all the differences, so I'll keep a running list here.

## Loading data

Throughout *The Mixtape*, the code examples load data from external files stored online. The code provided for loading this data is a little more complicated than it needs to be. For instance, consider [this from Section 4.0.1](https://mixtape.scunning.com/ch3.html#statistical-inference):


```r
library(tidyverse)
library(haven)

read_data <- function(df)
{
  full_path <- paste("https://raw.github.com/scunning1975/mixtape/master/", 
                     df, sep = "")
  df <- read_dta(full_path)
  return(df)
}

yule <- read_data("yule.dta") %>% 
  lm(paup ~ outrelief + old + pop, .)
  
summary(yule)
## 
## Call:
## lm(formula = paup ~ outrelief + old + pop, data = .)
## 
## Residuals:
##    Min     1Q Median     3Q    Max 
## -17.48  -5.31  -1.83   3.13  25.34 
## 
## Coefficients:
##             Estimate Std. Error t value Pr(>|t|)    
## (Intercept)  63.1877    27.1439    2.33    0.027 *  
## outrelief     0.7521     0.1350    5.57  5.8e-06 ***
## old           0.0556     0.2234    0.25    0.805    
## pop          -0.3107     0.0669   -4.65  7.3e-05 ***
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
## 
## Residual standard error: 9.6 on 28 degrees of freedom
## Multiple R-squared:  0.697,	Adjusted R-squared:  0.665 
## F-statistic: 21.5 on 3 and 28 DF,  p-value: 2e-07
```

Here, *The Mixtape* authors created a custom function named `read_data()` that loads a Stata file from a URL at GitHub. They then run a model on that data and store the results as an object named `yule`. It works, but it's not the most efficient way to do this for a few reasons:

- You don't need that whole custom `read_data()` function. Instead you can feed `read_dta()` a full URL and load it like that
- It's best if you save the data as an object by itself, *then* use it to create models. As it stands now, you can't look at the `yule.dta` file or make scatterplots or do anything with the data, since the results that are stored as `yule` are the results from the model, not the data itself.

Instead, this is an easier way to load the data and run the model:

### Translation


```r
# Mixtape version
read_data <- function(df)
{
  full_path <- paste("https://raw.github.com/scunning1975/mixtape/master/", 
                     df, sep = "")
  df <- read_dta(full_path)
  return(df)
}

yule <- read_data("yule.dta") %>% 
  lm(paup ~ outrelief + old + pop, .)

summary(yule)
```


```r
# Our class version
yule_data <- read_dta("https://raw.github.com/scunning1975/mixtape/master/yule.dta")

yule_model <- lm(paup ~ outrelief + old + pop,
                 data = yule_data)

summary(yule_model)
## 
## Call:
## lm(formula = paup ~ outrelief + old + pop, data = yule_data)
## 
## Residuals:
##    Min     1Q Median     3Q    Max 
## -17.48  -5.31  -1.83   3.13  25.34 
## 
## Coefficients:
##             Estimate Std. Error t value Pr(>|t|)    
## (Intercept)  63.1877    27.1439    2.33    0.027 *  
## outrelief     0.7521     0.1350    5.57  5.8e-06 ***
## old           0.0556     0.2234    0.25    0.805    
## pop          -0.3107     0.0669   -4.65  7.3e-05 ***
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
## 
## Residual standard error: 9.6 on 28 degrees of freedom
## Multiple R-squared:  0.697,	Adjusted R-squared:  0.665 
## F-statistic: 21.5 on 3 and 28 DF,  p-value: 2e-07
```

Even better, instead of using `summary(yule_model)`, you can use `tidy()` and `glance()` from the **broom** library, which convert any kind of model object into standard data frames:


```r
library(broom)  # You only need to run this once

tidy(yule_model)
## # A tibble: 4 x 5
##   term        estimate std.error statistic    p.value
##   <chr>          <dbl>     <dbl>     <dbl>      <dbl>
## 1 (Intercept)  63.2      27.1        2.33  0.0274    
## 2 outrelief     0.752     0.135      5.57  0.00000583
## 3 old           0.0556    0.223      0.249 0.805     
## 4 pop          -0.311     0.0669    -4.65  0.0000725
glance(yule_model)
## # A tibble: 1 x 12
##   r.squared adj.r.squared sigma statistic     p.value    df logLik   AIC   BIC deviance df.residual  nobs
##       <dbl>         <dbl> <dbl>     <dbl>       <dbl> <dbl>  <dbl> <dbl> <dbl>    <dbl>       <int> <int>
## 1     0.697         0.665  9.55      21.5 0.000000200     3  -115.  241.  248.    2552.          28    32
```


## Side-by-side regression tables: stargazer vs. modelsummary

Side-by-side regression tables are a standard feature of economics, political science, and policy articles and reports. They conveniently let you see the results from multiple regresison models in one table. [This blog post here goes into detail about how to read them](http://svmiller.com/blog/2014/08/reading-a-regression-table-a-guide-for-students/).

There are several R packages for creating these tables automatically. One of the earliest is named **stargazer**, and tons of people still use it—including *The Mixtape*. For instance, Section 3.1.5 in *The Mixtape* shows an example of discrimination and collider bias and the code there shows three regression models side by side:

`collider_discrimination.R`:


```r
set.seed(1234)

library(tidyverse)
library(stargazer)

tb <- tibble(
  female = ifelse(runif(10000) >= 0.5, 1, 0),
  ability = rnorm(10000),
  discrimination = female,
  occupation = 1 + 2*ability + 0*female - 2*discrimination + rnorm(10000),
  wage = 1 - 1*discrimination + 1*occupation + 2*ability + rnorm(10000) 
)

lm_1 <- lm(wage ~ female, tb)
lm_2 <- lm(wage ~ female + occupation, tb)
lm_3 <- lm(wage ~ female + occupation + ability, tb)

stargazer(lm_1, lm_2, lm_3, type = "html", 
          column.labels = c("Biased Unconditional", 
                            "Biased",
                            "Unbiased Conditional"))
```


<table style="text-align:center"><tr><td colspan="4" style="border-bottom: 1px solid black"></td></tr><tr><td style="text-align:left"></td><td colspan="3"><em>Dependent variable:</em></td></tr>
<tr><td></td><td colspan="3" style="border-bottom: 1px solid black"></td></tr>
<tr><td style="text-align:left"></td><td colspan="3">wage</td></tr>
<tr><td style="text-align:left"></td><td>Biased Unconditional</td><td>Biased</td><td>Unbiased Conditional</td></tr>
<tr><td style="text-align:left"></td><td>(1)</td><td>(2)</td><td>(3)</td></tr>
<tr><td colspan="4" style="border-bottom: 1px solid black"></td></tr><tr><td style="text-align:left">female</td><td>-2.900<sup>***</sup></td><td>0.560<sup>***</sup></td><td>-0.980<sup>***</sup></td></tr>
<tr><td style="text-align:left"></td><td>(0.084)</td><td>(0.029)</td><td>(0.028)</td></tr>
<tr><td style="text-align:left"></td><td></td><td></td><td></td></tr>
<tr><td style="text-align:left">occupation</td><td></td><td>1.800<sup>***</sup></td><td>0.990<sup>***</sup></td></tr>
<tr><td style="text-align:left"></td><td></td><td>(0.006)</td><td>(0.010)</td></tr>
<tr><td style="text-align:left"></td><td></td><td></td><td></td></tr>
<tr><td style="text-align:left">ability</td><td></td><td></td><td>2.000<sup>***</sup></td></tr>
<tr><td style="text-align:left"></td><td></td><td></td><td>(0.023)</td></tr>
<tr><td style="text-align:left"></td><td></td><td></td><td></td></tr>
<tr><td style="text-align:left">Constant</td><td>2.000<sup>***</sup></td><td>0.240<sup>***</sup></td><td>1.000<sup>***</sup></td></tr>
<tr><td style="text-align:left"></td><td>(0.060)</td><td>(0.020)</td><td>(0.017)</td></tr>
<tr><td style="text-align:left"></td><td></td><td></td><td></td></tr>
<tr><td colspan="4" style="border-bottom: 1px solid black"></td></tr><tr><td style="text-align:left">Observations</td><td>10,000</td><td>10,000</td><td>10,000</td></tr>
<tr><td style="text-align:left">R<sup>2</sup></td><td>0.110</td><td>0.910</td><td>0.950</td></tr>
<tr><td style="text-align:left">Adjusted R<sup>2</sup></td><td>0.110</td><td>0.910</td><td>0.950</td></tr>
<tr><td style="text-align:left">Residual Std. Error</td><td>4.200 (df = 9998)</td><td>1.300 (df = 9997)</td><td>1.000 (df = 9996)</td></tr>
<tr><td style="text-align:left">F Statistic</td><td>1,208.000<sup>***</sup> (df = 1; 9998)</td><td>50,089.000<sup>***</sup> (df = 2; 9997)</td><td>62,279.000<sup>***</sup> (df = 3; 9996)</td></tr>
<tr><td colspan="4" style="border-bottom: 1px solid black"></td></tr><tr><td style="text-align:left"><em>Note:</em></td><td colspan="3" style="text-align:right"><sup>*</sup>p<0.1; <sup>**</sup>p<0.05; <sup>***</sup>p<0.01</td></tr>
</table>

Neat. That works, and there are a ton of additional options you can feed to `stargazer()`—run `?stargazer` or search in the Help pane for "stargazer" to see more.

However, I'm not a fan of **stargazer** for a few reasons:

- Stargazer tables won't knit to Word
- You have to use different syntax when you're knitting to PDF vs. HTML (i.e. you have to change the `type` argument)
- Stargazer handles basic models like `lm()` and `glm()` well, but doesn't support newer things since (1) it hasn't been updated for a while, and (2) support for any newer models has to be built-in by hand by the developer.

In this class we won't use **stargazer**. Instead, we'll use the newer [**modelsummary** package](https://vincentarelbundock.github.io/modelsummary/), which addresses all of the issues with Stargazer:

- **modelsummary** tables knit to Word
- You don't have to use any special syntax when knitting documents with **modelsummary** tables—knit to PDF and they'll show up in the PDF; knit to Word and they'll show up in the Word file; knit to HTML and they'll show up there
- **modelsummary** handles any model that is supported by the **broom** package (basically, if you ran run `tidy()` on it, you can stick it in a table with **modelsummary**). If a model doesn't support broom yet, you can actually add that support yourself. For instance, nonparametric regression discontinuity models made with the **rdrobust** package don't work in either **stargazer** or **modelsummary**. They'll probably never be added to **stargazer**, but if you [include the code here](https://github.com/tidymodels/broom/issues/777#issuecomment-643251123) in your document, you can add **rdrobust** models to `modelsummary()`. Magic!

The syntax for `modelsummary()` is a little different from `stargazer()`. Here's how to recreate the same table from before:

### Translation


```r
# Stargazer version
stargazer(lm_1, lm_2, lm_3, type = "text", 
          column.labels = c("Biased Unconditional", 
                            "Biased",
                            "Unbiased Conditional"))
```


```r
# modelsummary version
library(modelsummary)  # You only need to run this once

modelsummary(list("Biased Unconditional" = lm_1, 
                  "Biased" = lm_2, 
                  "Unbiased Conditional" = lm_3),
             stars = TRUE)
```

<table class="table" style="width: auto !important; margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:left;">   </th>
   <th style="text-align:center;"> Biased Unconditional </th>
   <th style="text-align:center;"> Biased </th>
   <th style="text-align:center;"> Unbiased Conditional </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> (Intercept) </td>
   <td style="text-align:center;"> 2.015*** </td>
   <td style="text-align:center;"> 0.245*** </td>
   <td style="text-align:center;"> 1.005*** </td>
  </tr>
  <tr>
   <td style="text-align:left;">  </td>
   <td style="text-align:center;"> (0.060) </td>
   <td style="text-align:center;"> (0.020) </td>
   <td style="text-align:center;"> (0.017) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> female </td>
   <td style="text-align:center;"> -2.933*** </td>
   <td style="text-align:center;"> 0.561*** </td>
   <td style="text-align:center;"> -0.984*** </td>
  </tr>
  <tr>
   <td style="text-align:left;">  </td>
   <td style="text-align:center;"> (0.084) </td>
   <td style="text-align:center;"> (0.029) </td>
   <td style="text-align:center;"> (0.028) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> occupation </td>
   <td style="text-align:center;">  </td>
   <td style="text-align:center;"> 1.790*** </td>
   <td style="text-align:center;"> 0.995*** </td>
  </tr>
  <tr>
   <td style="text-align:left;">  </td>
   <td style="text-align:center;">  </td>
   <td style="text-align:center;"> (0.006) </td>
   <td style="text-align:center;"> (0.010) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> ability </td>
   <td style="text-align:center;">  </td>
   <td style="text-align:center;">  </td>
   <td style="text-align:center;"> 2.007*** </td>
  </tr>
  <tr>
   <td style="text-align:left;">  </td>
   <td style="text-align:center;">  </td>
   <td style="text-align:center;">  </td>
   <td style="text-align:center;"> (0.023) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Num.Obs. </td>
   <td style="text-align:center;"> 10000 </td>
   <td style="text-align:center;"> 10000 </td>
   <td style="text-align:center;"> 10000 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> R2 </td>
   <td style="text-align:center;"> 0.108 </td>
   <td style="text-align:center;"> 0.909 </td>
   <td style="text-align:center;"> 0.949 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> R2 Adj. </td>
   <td style="text-align:center;"> 0.108 </td>
   <td style="text-align:center;"> 0.909 </td>
   <td style="text-align:center;"> 0.949 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> AIC </td>
   <td style="text-align:center;"> 57175.7 </td>
   <td style="text-align:center;"> 34320.7 </td>
   <td style="text-align:center;"> 28518.8 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> BIC </td>
   <td style="text-align:center;"> 57197.3 </td>
   <td style="text-align:center;"> 34349.6 </td>
   <td style="text-align:center;"> 28554.9 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Log.Lik. </td>
   <td style="text-align:center;"> -28584.837 </td>
   <td style="text-align:center;"> -17156.358 </td>
   <td style="text-align:center;"> -14254.399 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> F </td>
   <td style="text-align:center;"> 1208.290 </td>
   <td style="text-align:center;"> 50089.046 </td>
   <td style="text-align:center;"> 62279.460 </td>
  </tr>
</tbody>
<tfoot>
<tr>
<td style="padding: 0; border:0;" colspan="100%">
<sup></sup> * p &lt; 0.1, ** p &lt; 0.05, *** p &lt; 0.01</td>
</tr>
</tfoot>
</table>

That's it! You feed `modelsummary()` a list of models. If you name the elements of the list, you'll get column headings. 

The `modelsummary()` function has a ton of options for changing the appearance, adding extra rows, omitting rows, highlighting rows, etc. [See this page for examples.](https://vincentarelbundock.github.io/modelsummary/articles/modelsummary.html)

