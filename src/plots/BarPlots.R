library("ggplot2")

generateBarPlots <- function(data)
{
    # Wiek
      ggplot(dataClean, aes(age)) +
        geom_bar(color="black", fill="white", width = 0.8)+
        ggtitle("Wykres zależności liczby badanych osób od ich wieku")
      
      ggsave("images/BarPlots_age.png")
      
      # Płeć
      ggplot(dataClean, aes(sex)) +
        geom_bar(color="black", fill="white")+
        ggtitle("Wykres zależności liczby badanych osób od ich płci")
      
      ggsave("images/BarPlots_sex.png")
      
      # Ból w klatce piersiowej
      ggplot(dataClean, aes(cp)) +
        geom_bar(color="black", fill="white")+
        ggtitle("Wykres zależności liczby badanych osób od typu bólu w klatce piersiowej")
      
      ggsave("images/BarPlots_cp.png")
      
      # Ciśnienie spoczynkowe krwi
      ggplot(dataClean, aes(trestbps)) +
        geom_bar(color="black", fill="white", width = 0.8)+
        ggtitle("Wykres zależności liczby badanych osób od ich ciśnienia spoczynkowego krwi")
      
      ggsave("images/BarPlots_trestbps.png")
      
      # Cholesterol
      ggplot(dataClean, aes(chol)) +
        geom_bar(color="black", fill="white")+
        ggtitle("Wykres zależności liczby badanych osób od ich stężenia cholesterolu")
      
      ggsave("images/BarPlots_chol.png")
      
      # Poziom cukru we krwi na czczo
      ggplot(dataClean, aes(fbs)) +
        geom_bar(color="black", fill="white")+
        ggtitle("Wykres zależności liczby badanych osób od wykrycia danego poziomu cukru")
      
      ggsave("images/BarPlots_fbs.png")
      
      # Test EKG
      ggplot(dataClean, aes(restecg)) +
        geom_bar(color="black", fill="white")+
        ggtitle("Wykres zależności liczby badanych osób od wyniku testu EKG")
      
      ggsave("images/BarPlots_restecg.png")
      
      # Maksymalne tętno
      ggplot(dataClean, aes(thalach)) +
        geom_bar(color="black", fill="white", width = 0.7)+
        ggtitle("Wykres zależności liczby badanych osób od wykrytego maksymalnego tętna")
      
      ggsave("images/BarPlots_thalach.png")
      
      # Dławica wysiłkowa
      ggplot(dataClean, aes(exang)) +
        geom_bar(color="black", fill="white")+
        ggtitle("Wykres zależności liczby badanych osób od wykrytej dławicy wysiłkowej")
        
      ggsave("images/BarPlots_exang.png")
      
      # Względne obniżenie rejonu ST w w czasie aktywności fizycznej
      ggplot(dataClean, aes(oldpeak)) +
        geom_bar(color="black", fill="white", width = 0.08)+
        ggtitle("Wykres zależności liczby badanych osób od segmentu ST")
      
      ggsave("images/BarPlots_oldpeak.png")
      
      # Nachylenie szczytowego odcinka ST wysiłkowego
      ggplot(dataClean, aes(slope)) +
        geom_bar(color="black", fill="white")+
        ggtitle("Wykres zależności liczby badanych osób od nachylenia odcinka ST wysiłkowego")
      
      ggsave("images/BarPlots_slope.png")
      
      # Główne naczynia
      ggplot(dataClean, aes(ca)) +
        geom_bar(color="black", fill="white")+
        ggtitle("Wykres zależności liczby badanych osób od liczby głównych naczyń")
      
      ggsave("images/BarPlots_ca.png")
      
      # Gęstość thalu
      ggplot(dataClean, aes(thal)) +
        geom_bar(color="black", fill="white")+
        ggtitle("Wykres zależności liczby badanych osób od wyniku scyntygrafii")
      
      ggsave("images/BarPlots_thal.png")
      
      # Choroba serca
      ggplot(dataClean, aes(target)) +
        geom_bar(color="black", fill="white")+
        ggtitle("Wykres zależności liczby badanych osób od występowania choroby serca")
      
      ggsave("images/BarPlots_target.png")
    
    return()
}
