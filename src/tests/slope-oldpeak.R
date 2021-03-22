library(ggplot2)

slopeOldpeak <- function(data){
  x <- as.numeric(dataClean$slope)
  y <- as.numeric(dataClean$oldpeak)
  
  cor.test(x, y, method="kendall", alternative="less")
  
  
  ggplot(data, aes(slope, oldpeak)) +
    geom_boxplot() +
    ggtitle("Wykres pudełkowy obniżenia odcinka ST w próbie wysiłkowej") + 
    labs(x="Nachylenie odcinka ST podczas wysiłku", y="Obniżenie odcinka ST [mV]")
  
  ggsave("images/oldpeak-slope.png")
  
  
  ggplot(data, aes(oldpeak, fill=slope)) + 
    geom_density(alpha=0.8) + 
    facet_grid(rows = vars(slope))
  
  ggsave("images/oldpeak-slope-v2-extra-no-description.png")
}