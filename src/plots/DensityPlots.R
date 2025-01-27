library(ggplot2)

generateDensityPlots <- function(data)
{
  ggplot(data,aes(x=age)) +
    geom_density(fill="steelblue")+
    ggtitle("Wykres g�sto�ci wieku") + 
    labs(x="Wiek", y="G�sto��")
  ggsave("images/density-age.png")
  
  ggplot(data,aes(x=trestbps)) +
    geom_density(fill="steelblue")+
    ggtitle("Wykres g�sto�ci ci�nienia spoczynkowego") + 
    labs(x="Ci�nienie spoczynkowe", y="G�sto��")
  ggsave("images/density-trestbps.png")
  
  ggplot(data,aes(x=chol)) +
    geom_density(fill="steelblue")+
    ggtitle("Wykres g�sto�ci poziomu cholesterolu") + 
    labs(x="Poziom cholesterolu", y="G�sto��")
  ggsave("images/density-chol.png")
  
  ggplot(data,aes(x=thalach)) +
    geom_density(fill="steelblue")+
    ggtitle("Wykres g�sto�ci maksymalnego zarejestrowanego t�tna") + 
    labs(x="Maksymalne zarejestrowane t�tno", y="G�sto��")
  ggsave("images/density-thalach.png")
  
  ggplot(data,aes(x=oldpeak)) +
    geom_density(fill="steelblue")+
    ggtitle("Wykres g�sto�ci wzgl�dnego obni�enia rejonu ST w w czasie aktywno�ci fizycznej") + 
    labs(x="Wzgl�dne obni�enie rejonu ST w w czasie aktywno�ci fizycznej", y="G�sto��")
  ggsave("images/density-oldpeak.png")
}