library("ggplot2")

generateBarPlots <- function(dataClean)
{
  # Wiek
  ggplot(dataClean, aes(age)) +
    geom_bar(color="black", fill="steelblue", width = 0.8)+
    ggtitle("Wykres zale¿noœci liczby badanych osób od ich wieku")
  
  ggsave("images/BarPlots_age.png")
  
  # P³eæ
  ggplot(dataClean, aes(sex)) +
    geom_bar(color="black", fill="steelblue")+
    ggtitle("Wykres zale¿noœci liczby badanych osób od ich p³ci")
  
  ggsave("images/BarPlots_sex.png")
  
  # Ból w klatce piersiowej
  ggplot(dataClean, aes(cp)) +
    geom_bar(color="black", fill="steelblue")+
    ggtitle("Wykres zale¿noœci liczby badanych osób od typu bólu w klatce piersiowej")
  
  ggsave("images/BarPlots_cp.png")
  
  # Ciœnienie spoczynkowe krwi
  ggplot(dataClean, aes(trestbps)) +
    geom_bar(color="black", fill="steelblue", width = 0.8)+
    ggtitle("Wykres zale¿noœci liczby badanych osób od ich ciœnienia spoczynkowego krwi")
  
  ggsave("images/BarPlots_trestbps.png")
  
  # Cholesterol
  ggplot(dataClean, aes(chol)) +
    geom_bar(color="black", fill="steelblue")+
    ggtitle("Wykres zale¿noœci liczby badanych osób od ich stê¿enia cholesterolu")
  
  ggsave("images/BarPlots_chol.png")
  
  # Poziom cukru we krwi na czczo
  ggplot(dataClean, aes(fbs)) +
    geom_bar(color="black", fill="steelblue")+
    ggtitle("Wykres zale¿noœci liczby badanych osób od wykrycia danego poziomu cukru")
  
  ggsave("images/BarPlots_fbs.png")
  
  # Test EKG
  ggplot(dataClean, aes(restecg)) +
    geom_bar(color="black", fill="steelblue")+
    ggtitle("Wykres zale¿noœci liczby badanych osób od wyniku testu EKG")
  
  ggsave("images/BarPlots_restecg.png")
  
  # Maksymalne têtno
  ggplot(dataClean, aes(thalach)) +
    geom_bar(color="black", fill="steelblue", width = 0.7)+
    ggtitle("Wykres zale¿noœci liczby badanych osób od wykrytego maksymalnego têtna")
  
  ggsave("images/BarPlots_thalach.png")
  
  # D³awica wysi³kowa
  ggplot(dataClean, aes(exang)) +
    geom_bar(color="black", fill="steelblue")+
    ggtitle("Wykres zale¿noœci liczby badanych osób od wykrytej d³awicy wysi³kowej")
  
  ggsave("images/BarPlots_exang.png")
  
  # Wzglêdne obni¿enie rejonu ST w w czasie aktywnoœci fizycznej
  ggplot(dataClean, aes(oldpeak)) +
    geom_bar(color="black", fill="steelblue", width = 0.08)+
    ggtitle("Wykres zale¿noœci liczby badanych osób od segmentu ST")
  
  ggsave("images/BarPlots_oldpeak.png")
  
  # Nachylenie szczytowego odcinka ST wysi³kowego
  ggplot(dataClean, aes(slope)) +
    geom_bar(color="black", fill="steelblue")+
    ggtitle("Wykres zale¿noœci liczby badanych osób od nachylenia odcinka ST wysi³kowego")
  
  ggsave("images/BarPlots_slope.png")
  
  # G³ówne naczynia
  ggplot(dataClean, aes(ca)) +
    geom_bar(color="black", fill="steelblue")+
    ggtitle("Wykres zale¿noœci liczby badanych osób od liczby g³ównych naczyñ")
  
  ggsave("images/BarPlots_ca.png")
  
  # Gêstoœæ thalu
  ggplot(dataClean, aes(thal)) +
    geom_bar(color="black", fill="steelblue")+
    ggtitle("Wykres zale¿noœci liczby badanych osób od wyniku scyntygrafii")
  
  ggsave("images/BarPlots_thal.png")
  
  # Choroba serca
  ggplot(dataClean, aes(target)) +
    geom_bar(color="black", fill="steelblue")+
    ggtitle("Wykres zale¿noœci liczby badanych osób od wystêpowania choroby serca")
  
  ggsave("images/BarPlots_target.png")
  
  return()
}
