library("ggplot2")

generateBarPlots <- function(dataClean)
{
  # Wiek
  ggplot(dataClean, aes(age)) +
    geom_bar(color="black", fill="steelblue", width = 0.8)+
    ggtitle("Wykres zale¿noœci liczby badanych osób od ich wieku")+
    labs(x="Wiek", y="Liczba badanych")
  ggsave("images/BarPlots_age.png")
  
  # P³eæ
  ggplot(dataClean, aes(sex)) +
    geom_bar(color="black", fill="steelblue")+
    ggtitle("P³eæ osób badanych")+
    labs(x="P³eæ", y="Liczba badanych")
  ggsave("images/BarPlots_sex.png")
  
  # Ból w klatce piersiowej
  ggplot(dataClean, aes(cp)) +
    geom_bar(color="black", fill="steelblue")+
    ggtitle("ród³o bólu w klatce piersiowej")+
    labs(x="Typ bólu w klatce piersiowej", y="Liczba badanych")
  ggsave("images/BarPlots_cp.png")
  
  # Ciœnienie spoczynkowe krwi
  ggplot(dataClean, aes(trestbps)) +
    geom_bar(color="black", fill="steelblue", width = 0.8)+
    ggtitle("Wykres zale¿noœci liczby badanych osób od ich ciœnienia spoczynkowego krwi")+
    labs(x="Ciœnienie spoczynkowe krwi", y="Liczba badanych")
  ggsave("images/BarPlots_trestbps.png")
  
  # Cholesterol
  ggplot(dataClean, aes(chol)) +
    geom_bar(color="black", fill="steelblue")+
    ggtitle("Wykres zale¿noœci liczby badanych osób od ich stê¿enia cholesterolu")+
    labs(x="Stê¿enie cholesterolu", y="Liczba badanych")
  ggsave("images/BarPlots_chol.png")
  
  # Poziom cukru we krwi na czczo
  ggplot(dataClean, aes(fbs)) +
    geom_bar(color="black", fill="steelblue")+
    ggtitle("Poziom cukru we krwi na czczo")+
    labs(x="Czy poziom cukru przekracza³ 120 mg/dl?", y="Liczba badanych")
  ggsave("images/BarPlots_fbs.png")
  
  # Test EKG
  ggplot(dataClean, aes(restecg)) +
    geom_bar(color="black", fill="steelblue")+
    ggtitle("Wynik EKG")+
    labs(x="Wynik testu EKG", y="Liczba badanych")
  ggsave("images/BarPlots_restecg.png")
  
  # Maksymalne têtno
  ggplot(dataClean, aes(thalach)) +
    geom_bar(color="black", fill="steelblue", width = 0.7)+
    ggtitle("Wykres zale¿noœci liczby badanych osób od wykrytego maksymalnego têtna")+
    labs(x="Maksymalne têtno", y="Liczba badanych")
  ggsave("images/BarPlots_thalach.png")
  
  # D³awica wysi³kowa
  ggplot(dataClean, aes(exang)) +
    geom_bar(color="black", fill="steelblue")+
    ggtitle("D³awica wysi³kowa wœród pacjentów")+
    labs(x="Wykrycie d³awicy wysi³kowej", y="Liczba badanych")
  ggsave("images/BarPlots_exang.png")
  
  # Wzglêdne obni¿enie rejonu ST w w czasie aktywnoœci fizycznej
  ggplot(dataClean, aes(oldpeak)) +
    geom_bar(color="black", fill="steelblue", width = 0.08)+
    ggtitle("Wykres zale¿noœci liczby badanych osób od segmentu ST")+
    labs(x="Obni¿enie rejonu ST", y="Liczba badanych")
  ggsave("images/BarPlots_oldpeak.png")
  
  # Nachylenie szczytowego odcinka ST wysi³kowego
  ggplot(dataClean, aes(slope)) +
    geom_bar(color="black", fill="steelblue")+
    ggtitle("Nachylenie segmentu ST podczas próby wysi³kowej")+
    labs(x="Poziom nachylenia", y="Liczba badanych")
  ggsave("images/BarPlots_slope.png")
  
  # G³ówne naczynia
  ggplot(dataClean, aes(ca)) +
    geom_bar(color="black", fill="steelblue")+
    ggtitle("Liczba g³ównych naczyñ wyró¿nionych w koronarografii")+
    labs(x="Zabarwione g³ówne naczynia - od 0 do 3", y="Liczba badanych")
  ggsave("images/BarPlots_ca.png")
  
  # Gêstoœæ thalu
  ggplot(dataClean, aes(thal)) +
    geom_bar(color="black", fill="steelblue")+
    ggtitle("Wynik scyntygrafii miêsienia sercowego")+
    labs(x="Grupa wynikowa", y="Liczba badanych")
  ggsave("images/BarPlots_thal.png")
  
  # Choroba serca
  ggplot(dataClean, aes(target)) +
    geom_bar(color="black", fill="steelblue")+
    ggtitle("Prawdopodobieñstwo wyst¹pienia choroby")+
    labs(x="Grupa diagnozowa", y="Liczba badanych")
  ggsave("images/BarPlots_target.png")
  
  return()
}
