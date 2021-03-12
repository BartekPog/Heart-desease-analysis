library(ggplot2)

generateDensityPlots <- function(data)
{
  ggplot(data,aes(x=age)) +
    geom_density(fill="steelblue")+
    ggtitle("Wykres gêstoœci wieku") + 
    theme(axis.title.y=element_blank(),
          axis.text.y=element_blank(),
          axis.ticks.y=element_blank()) +
    labs(x="Wiek")
  
  ggsave("images/density-age.png")
  
  
  ggplot(data,aes(x=sex)) +
    geom_density(fill="steelblue")+
    ggtitle("Wykres gêstoœci p³ci") + 
    theme(axis.title.y=element_blank(),
          axis.text.y=element_blank(),
          axis.ticks.y=element_blank()) +
    labs(x="P³eæ")

  ggsave("images/density-sex.png")
  
  
  ggplot(data,aes(x=cp)) +
    geom_density(fill="steelblue")+
    ggtitle("Wykres gêstoœci typu bólu klatki piersiowej") + 
    theme(axis.title.y=element_blank(),
          axis.text.y=element_blank(),
          axis.ticks.y=element_blank()) +
    labs(x="Typ bólu klatki piersiowej")
  
  ggsave("images/density-cp.png")
  
  
  ggplot(data,aes(x=trestbps)) +
    geom_density(fill="steelblue")+
    ggtitle("Wykres gêstoœci ciœnienia spoczynkowego") + 
    theme(axis.title.y=element_blank(),
          axis.text.y=element_blank(),
          axis.ticks.y=element_blank()) +
    labs(x="Ciœnienie spoczynkowe")
  
  ggsave("images/density-trestbps.png")
  
  
  ggplot(data,aes(x=chol)) +
    geom_density(fill="steelblue")+
    ggtitle("Wykres gêstoœci poziomu cholesterolu") + 
    theme(axis.title.y=element_blank(),
          axis.text.y=element_blank(),
          axis.ticks.y=element_blank()) +
    labs(x="Poziom cholesterolu")
  
  ggsave("images/density-chol.png")
  
  
  ggplot(data,aes(x=fbs)) +
    geom_density(fill="steelblue")+
    ggtitle("Wykres gêstoœci poziomu cukru we krwi na czczo") + 
    theme(axis.title.y=element_blank(),
          axis.text.y=element_blank(),
          axis.ticks.y=element_blank()) +
    labs(x="Poziom cukru we krwi na czczo")
  
  ggsave("images/density-fbs.png")
  
  
  ggplot(data,aes(x=restecg)) +
    geom_density(fill="steelblue")+
    ggtitle("Wykres gêstoœci spoczynkowych wyników elektrokardiograficznych") + 
    theme(axis.title.y=element_blank(),
          axis.text.y=element_blank(),
          axis.ticks.y=element_blank()) +
    labs(x="Spoczynkowe wyniki EKG")
  
  ggsave("images/density-restecg.png")
  
  
  ggplot(data,aes(x=thalach)) +
    geom_density(fill="steelblue")+
    ggtitle("Wykres gêstoœci maksymalnego zarejestrowanego têtna") + 
    theme(axis.title.y=element_blank(),
          axis.text.y=element_blank(),
          axis.ticks.y=element_blank()) +
    labs(x="Maksymalne zarejestrowane têtno")
  
  ggsave("images/density-thalach.png")
  
  
  ggplot(data,aes(x=exang)) +
    geom_density(fill="steelblue")+
    ggtitle("Wykres gêstoœci wykrytej d³awicy wysi³kowej") + 
    theme(axis.title.y=element_blank(),
          axis.text.y=element_blank(),
          axis.ticks.y=element_blank()) +
    labs(x="Wykryta d³awica wysi³kowa")
  
  ggsave("images/density-exang.png")
  

  ggplot(data,aes(x=oldpeak)) +
    geom_density(fill="steelblue")+
    ggtitle("Wykres gêstoœci Wzglêdnego obni¿enia rejonu ST w w czasie aktywnoœci fizycznej") + 
    theme(axis.title.y=element_blank(),
          axis.text.y=element_blank(),
          axis.ticks.y=element_blank()) +
    labs(x="Wzglêdne obni¿enie rejonu ST w w czasie aktywnoœci fizycznej")
  
  ggsave("images/density-oldpeak.png")
  
  
  ggplot(data,aes(x=slope)) +
    geom_density(fill="steelblue")+
    ggtitle("Wykres gêstoœci nachylenia szczytowego odcinka ST wysi³kowego") + 
    theme(axis.title.y=element_blank(),
          axis.text.y=element_blank(),
          axis.ticks.y=element_blank()) +
    labs(x="Nachylenie szczytowe odcinka ST wysi³kowego")
  
  ggsave("images/density-slope.png")
  
  
  ggplot(data,aes(x=ca)) +
    geom_density(fill="steelblue")+
    ggtitle("Wykres gêstoœci liczby zabarwionych g³ównych naczyñ") + 
    theme(axis.title.y=element_blank(),
          axis.text.y=element_blank(),
          axis.ticks.y=element_blank()) +
    labs(x="Liczba zabarwionych g³ównych naczyñ")
  
  ggsave("images/density-ca.png")
  
  
  ggplot(data,aes(x=thal)) +
    geom_density(fill="steelblue")+
    ggtitle("Wykres gêstoœci talu") + 
    theme(axis.title.y=element_blank(),
          axis.text.y=element_blank(),
          axis.ticks.y=element_blank()) +
    labs(x="Tal")
  
  ggsave("images/density-thal.png")
  
  
  ggplot(data,aes(x=target)) +
    geom_density(fill="steelblue")+
    ggtitle("Wykres gêstoœci wystêpowania chorób serca") + 
    theme(axis.title.y=element_blank(),
          axis.text.y=element_blank(),
          axis.ticks.y=element_blank()) +
    labs(x="Wystêpowanie chorób serca")
  
  ggsave("images/density-target.png")
  
  return()
}