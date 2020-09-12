

pacman::p_load(pacman, rio, tidyverse)

df<-import("data/StateData.xlsx")%>%
    as_tibble()%>%
    select(instagram:modernDance)%>%
    print()
  
#scatterplot
df%>%
  select(instagram:modernDance)%>%
  plot()

df%>%
  select(museum,volunteering)%>%
  plot()

lm(df$volunteering~df$museum)%>%abline()

# Compute and save bivariate regression
fit1<-lm(df$volunteering~df$museum)

fit1

summary(fit1)

# Confidence intervals for coefficients
confint(fit1)

# Prediction intervals for values of "volunteering"
predict(fit1, interval = "prediction")

# Regression diagnostics
lm.influence(fit1)
influence.measures(fit1)


# MULTIPLE REGRESSION ######################################

df<-df%>%
    select(volunteering,everything())%>%
    print()
  
lm(df)

# Identify outcome, infer rest
lm(volunteering ~ ., data = df)


# Identify entire model
lm(volunteering ~ instagram + facebook + retweet +
     entrepreneur + gdpr + privacy + university + 
     mortgage + museum + scrapbook + modernDance, 
   data = df)


fit2 <-lm(df)

fit2

summary(fit2)

confint(fit2)

# Predict values of "volunteering"
predict(fit2)

# Prediction intervals for values of "volunteering"
predict(fit2, interval = "prediction")

# Regression diagnostics
lm.influence(fit2)
influence.measures(fit2)

# CLEAN UP #################################################

# Clear environment
rm(list = ls()) 

# Clear packages
p_unload(all)  # Remove all add-ons

# Clear plots
dev.off()  # But only if there IS a plot

# Clear console
cat("\014")  # ctrl+L

# Clear mind :)

