---
title       : The Rule of 70
subtitle    : Population Doubling Estimates
author      : Zane Kratzer
job         : Developing Data Products, Course Project
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## Exponential Growth and Doubling Time

If you want to know how quickly something will double when it's growing exponentially (at a constant rate), just divide 70 by the percent increase, and you've got the doubling time.

For example, if you hear that the population of your city is growing by 5% every year, that means it will double in just 14 years!

70 / % growth = doubling time


```r
70/5
```

```
## [1] 14
```

--- .class #id 

## Annual Percent Growth

It works in reverse, too: divide 70 by the doubling time to find the growth rate. If you hear that your city population is due to double in 35 years, you know that it's increasing at 2% per year. (Note: This also assumes that the population growth is going to maintain steady at 2% every year during that entire 35 year period.)

70 / doubling time = % growth


```r
70/35
```

```
## [1] 2
```

Remember this "Rule of 70" whenever you hear that something is growing by some percentage, or that something is growing steadily. That means it's going to double -- and probably sooner than you think!

--- .class #id 

## My "Rule of 70" Application

My application is designed to help the user think about this rule of 70 and to show some real world examples with current population and growth rate estimates. The user is first given the option to choose between 7 different populaton parameters: World Population, US Population, New York City, Los Angeles, Chicago, Houston and Philadelphia.

The application then takes this input, looks up the current population and growth rate estimates for that selection from an attached data table, then it generates the user's selection, the current population growth rate for that selection, the doubling time for that selection and the population at the time of doubling. For instance, if the user selects "United States", the app pulls up the population and growth rate for the U.S. from the attached data table then calculates the doubling time and the population at the time of doubling.

```r
70/0.76; 316497531*2
```

```
## [1] 92.10526
```

```
## [1] 632995062
```

--- .class #id 

## Playing Around with Different Growth Rates

Alternatively, the user is also given the option to bypass the first selection and examine the annual rate of growth.  If the user is interested in knowing the doubling time for a specific rate, they just enter that rate and the application outputs the specified rate and the doubling time for the specified rate. It may be interesting to test out different growth rates to find out how much that impacts the overall doubling time.

```r
x<-c(0.5, 1.1, 2.2, 3.3, 4.4, 5.0)
70/x
```

```
## [1] 140.00000  63.63636  31.81818  21.21212  15.90909  14.00000
```

It is my hope that this application will help people think more accurately about the phenomenon of exponential growth with relation to world population growth.  What is fascinating about this basic principle is that it doesn't take a lot of growth (most growth rates are around 1%) to drastically impact the world's population totals over a relatively short period of time (70 years is within 1 lifetime!).
