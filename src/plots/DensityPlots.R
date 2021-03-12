library(ggplot2)

generateDensityPlots <- function(data)
{
  ggplot(data,aes(x=age)) +
    geom_density(fill="steelblue")+
    ggtitle("Wykres gêstoœci wieku") + 
    labs(x="Wiek", y="Gêstoœæ")
  ggsave("images/density-age.png")
  
  ggplot(data,aes(x=sex)) +
    geom_density(fill="steelblue")+
    ggtitle("Wykres gêstoœci p³ci") + 
    labs(x="P³eæ", y="Gêstoœæ")
  ggsave("images/density-sex.png")
  
  ggplot(data,aes(x=cp)) +
    geom_density(fill="steelblue")+
    ggtitle("Wykres gêstoœci typu bólu klatki piersiowej") + 
    labs(x="Typ bólu klatki piersiowej", y="Gêstoœæ")
  ggsave("images/density-cp.png")
  
  ggplot(data,aes(x=trestbps)) +
    geom_density(fill="steelblue")+
    ggtitle("Wykres gêstoœci ciœnienia spoczynkowego") + 
    labs(x="Ciœnienie spoczynkowe", y="Gêstoœæ")
  ggsave("images/density-trestbps.png")
  
  ggplot(data,aes(x=chol)) +
    geom_density(fill="steelblue")+
    ggtitle("Wykres gêstoœci poziomu cholesterolu") + 
    labs(x="Poziom cholesterolu", y="Gêstoœæ")
  ggsave("images/density-chol.png")
  
  ggplot(data,aes(x=fbs)) +
    geom_density(fill="steelblue")+
    ggtitle("Wykres gêstoœci poziomu cukru we krwi na czczo") + 
    labs(x="Poziom cukru we krwi na czczo", y="Gêstoœæ")
  ggsave("images/density-fbs.png")
  
  ggplot(data,aes(x=restecg)) +
    geom_density(fill="steelblue")+
    ggtitle("Wykres gêstoœci spoczynkowych wyników elektrokardiograficznych") + 
    labs(x="Spoczynkowe wyniki EKG", y="Gêstoœæ")
  ggsave("images/density-restecg.png")
  
  ggplot(data,aes(x=thalach)) +
    geom_density(fill="steelblue")+
    ggtitle("Wykres gêstoœci maksymalnego zarejestrowanego têtna") + 
    labs(x="Maksymalne zarejestrowane têtno", y="Gêstoœæ")
  ggsave("images/density-thalach.png")
  
  ggplot(data,aes(x=exang)) +
    geom_density(fill="steelblue")+
    ggtitle("Wykres gêstoœci wykrytej d³awicy wysi³kowej") + 
    labs(x="Wykryta d³awica wysi³kowa", y="Gêstoœæ")
  ggsave("images/density-exang.png")

  ggplot(data,aes(x=oldpeak)) +
    geom_density(fill="steelblue")+
    ggtitle("Wykres gêstoœci wzglêdnego obni¿enia rejonu ST w w czasie aktywnoœci fizycznej") + 
    labs(x="Wzglêdne obni¿enie rejonu ST w w czasie aktywnoœci fizycznej", y="Gêstoœæ")
  ggsave("images/density-oldpeak.png")
  
  ggplot(data,aes(x=slope)) +
    geom_density(fill="steelblue")+
    ggtitle("Wykres gêstoœci nachylenia szczytowego odcinka ST wysi³kowego") + 
    labs(x="Nachylenie szczytowe odcinka ST wysi³kowego", y="Gêstoœæ")
  ggsave("images/density-slope.png")
  
  ggplot(data,aes(x=ca)) +
    geom_density(fill="steelblue")+
    ggtitle("Wykres gêstoœci liczby zabarwionych g³ównych naczyñ") + 
    labs(x="Liczba zabarwionych g³ównych naczyñ", y="Gêstoœæ")
  ggsave("images/density-ca.png")
  
  ggplot(data,aes(x=thal)) +
    geom_density(fill="steelblue")+
    ggtitle("Wykres gêstoœci talu") + 
    labs(x="Tal", y="Gêstoœæ")
  ggsave("images/density-thal.png")
  
  ggplot(data,aes(x=target)) +
    geom_density(fill="steelblue")+
    ggtitle("Wykres gêstoœci wystêpowania chorób serca") + 
    labs(x="Wystêpowanie chorób serca", y="Gêstoœæ")
  ggsave("images/density-target.png")
  
  return()
}