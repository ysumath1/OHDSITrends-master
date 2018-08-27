library(segmented); library(ggplot2)
set.seed(12)
xx <- 1:100
zz <- runif(100)
yy <- 2 + 1.5*pmax(xx - 35, 0) - 1.5*pmax(xx - 70, 0) + 15*pmax(zz - .5, 0) + 
  rnorm(100,0,2)
dati <- data.frame(x = xx, y = yy, z = zz)


# Aims to pluck this information from the lm fit model; not sure if this would work with other 
# regression models. Could be true if lm is a standardized object in R that is always formatted same way
ggplotRegression <- function (fit) {
  
  require(ggplot2)
  
  ggplot(fit$model, aes_string(x = names(fit$model)[2], y = names(fit$model)[1])) + 
    geom_point() +
    stat_smooth(method = "lm", col = "red") +
    labs(title = paste("Adj R2 = ",signif(summary(fit)$adj.r.squared, 5),
                       "Intercept =",signif(fit$coef[[1]],5 ),
                       " Slope =",signif(fit$coef[[2]], 5),
                       " P =",signif(summary(fit)$coef[2,4], 5)))
}

ggplotRegression(lm(y~x, data=dati))

p = poly(dati$x, degree=3)
fit1 = lm(y~poly(x, 3), data = dati)

pre
plot(fit1)

ggplot(dati, aes(x = x, y = y)) + geom_point() +
  stat_smooth(method = "lm", formula = y~poly(x, 3), col = "red")


out.lm <- lm(y ~poly(x, 2), data = dati)
o <- segmented(out.lm, seg.Z = ~x, psi = list(x = c(30, 60)),
               control = seg.control(display = FALSE))

#o <- segmented(out.lm, seg.Z = ~x, control = seg.control(display = FALSE))

dat2 = data.frame(x = xx, y = broken.line(o)$fit)
ggplot(dati, aes(x = x, y = y)) + geom_point() + geom_line(data = dat2, color = 'blue')

