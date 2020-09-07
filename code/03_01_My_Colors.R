

x<-c(24,7,19,3,8,12)
barplot(x)

?colors
colors()

browseURL("https://datalab.cc/rcolors")

barplot(x,col="red3")

barplot(x,col="slategray3")

barplot(x, col = rgb(.80, 0, 0))      # red3
barplot(x, col = rgb(.62, .71, .80))  # slategray3

# RGB triplets (0-255)
barplot(x, col = rgb(205, 0, 0, max = 255))     # red3
barplot(x, col = rgb(159, 182, 205, max = 255)) # slategray3

# RGB hexcodes
barplot(x, col = "#CD0000")  # red3
barplot(x, col = "#9FB6CD")  # slategray3

# Index numbers
barplot(x, col = colors() [555])  # red3
barplot(x, col = colors() [602])  # slategray3


# MULTIPLE COLORS ##########################################
# Can specify several colors in a vector, which will cycle
barplot(x, col = c("red3", "slategray3"))
barplot(x, col = c("#9FB6CD", "#CD0000"))


?palette
palette()

barplot(x,col=1:6)
barplot(x, col = rainbow(6))         # Rainbow colors
barplot(x, col = heat.colors(6))     # Yellow through red
barplot(x, col = terrain.colors(6))  # Gray through green
barplot(x, col = topo.colors(6))  # Purple through tan
barplot(x, col = cm.colors(6))       # Pinks and blues

# CLEAN UP #################################################

# Clear environment
rm(list = ls()) 

# Clear plots
dev.off()  # But only if there IS a plot

# Clear console
cat("\014")  # ctrl+L

# Clear mind :)





