library("ggplot2")

generateBarPlots <- function(data)
{
    # Wiek
    ggplot(data, aes(x=factor(age))) +
      geom_bar(stat = "count", width=0.6, fill=rgb(0.1,0.4,0.5,0.7)) +
      theme_minimal() +
      ggtitle("Wykres zależności liczby badanych osób od ich wieku")
    
    ggsave("images/BarPlots_age.png")
    
    # Płeć
    ggplot(data, aes(x=factor(sex))) +
      geom_bar(stat = "count", width=0.6, fill=rgb(0.1,0.4,0.5,0.7)) +
      theme_minimal() +
      ggtitle("Wykres zależności liczby badanych osób od ich płci")
    
    ggsave("images/BarPlots_sex.png")
    
    # Ból w klatce piersiowej
    ggplot(data, aes(x=factor(cp))) +
      geom_bar(stat = "count", width=0.6, fill=rgb(0.1,0.4,0.5,0.7)) +
      theme_minimal() +
      ggtitle("Wykres zależności liczby badanych osób od typu bólu w klatce piersiowej")
    
    ggsave("images/BarPlots_cp.png")
    
    # Ciśnienie spoczynkowe krwi
    ggplot(data, aes(x=factor(trestbps))) +
      geom_bar(stat = "count", width=0.8, fill=rgb(0.1,0.4,0.5,0.7)) +
      theme_minimal() +
      ggtitle("Wykres zależności liczby badanych osób od ich ciśnienia spoczynkowego krwi")
    
    ggsave("images/BarPlots_trestbps.png")
    
    # Cholesterol
    ggplot(data, aes(x=factor(chol))) +
      geom_bar(stat = "count", width=0.5, fill=rgb(0.1,0.4,0.5,0.7)) +
      theme_minimal() +
      ggtitle("Wykres zależności liczby badanych osób od ich stężenia cholesterolu")
    
    ggsave("images/BarPlots_chol.png")
    
    # Poziom cukru we krwi na czczo
    ggplot(data, aes(x=factor(fbs))) +
      geom_bar(stat = "count", width=0.6, fill=rgb(0.1,0.4,0.5,0.7)) +
      theme_minimal() +
      ggtitle("Wykres zależności liczby badanych osób od wykrycia danego poziomu cukru")
    
    ggsave("images/BarPlots_fbs.png")
    
    # Test EKG
    ggplot(data, aes(x=factor(restecg))) +
      geom_bar(stat = "count", width=0.6, fill=rgb(0.1,0.4,0.5,0.7)) +
      theme_minimal() +
      ggtitle("Wykres zależności liczby badanych osób od wyniku testu EKG")
    
    ggsave("images/BarPlots_restecg.png")
    
    # Maksymalne tętno
    ggplot(data, aes(x=factor(thalach))) +
      geom_bar(stat = "count", width=0.9, fill=rgb(0.1,0.4,0.5,0.7)) +
      theme_minimal() +
      ggtitle("Wykres zależności liczby badanych osób od wykrytego maksymalnego tętna")
    
    ggsave("images/BarPlots_thalach.png")
    
    # Dławica wysiłkowa
    ggplot(data, aes(x=factor(exang))) +
      geom_bar(stat = "count", width=0.6, fill=rgb(0.1,0.4,0.5,0.7))
      theme_minimal() +
      ggtitle("Wykres zależności liczby badanych osób od wykrytej dławicy wysiłkowej")
      
    ggsave("images/BarPlots_exang.png")
    
    # Względne obniżenie rejonu ST w w czasie aktywności fizycznej
    ggplot(data, aes(x=factor(oldpeak))) +
      geom_bar(stat = "count", width=0.5, fill=rgb(0.1,0.4,0.5,0.7)) +
      theme_minimal() +
      ggtitle("Wykres zależności liczby badanych osób od segmentu ST")
    
    ggsave("images/BarPlots_oldpeak.png")
    
    # Nachylenie szczytowego odcinka ST wysiłkowego
    ggplot(data, aes(x=factor(slope))) +
      geom_bar(stat = "count", width=0.6, fill=rgb(0.1,0.4,0.5,0.7)) +
      theme_minimal() +
      ggtitle("Wykres zależności liczby badanych osób od nachylenia odcinka ST wysiłkowego")
    
    ggsave("images/BarPlots_slope.png")
    
    # Główne naczynia
    ggplot(data, aes(x=factor(ca))) +
      geom_bar(stat = "count", width=0.6, fill=rgb(0.1,0.4,0.5,0.7)) +
      theme_minimal() +
      ggtitle("Wykres zależności liczby badanych osób od liczby głównych naczyń")
    
    ggsave("images/BarPlots_ca.png")
    
    # Gęstość thalu
    ggplot(data, aes(x=factor(thal))) +
      geom_bar(stat = "count", width=0.6, fill=rgb(0.1,0.4,0.5,0.7)) +
      theme_minimal() +
      ggtitle("Wykres zależności liczby badanych osób od wyniku scyntygrafii")
    
    ggsave("images/BarPlots_thal.png")
    
    # Choroba serca
    ggplot(data, aes(x=factor(target))) +
      geom_bar(stat = "count", width=0.6, fill=rgb(0.1,0.4,0.5,0.7)) +
      theme_minimal() +
      ggtitle("Wykres zależności liczby badanych osób od występowania choroby serca")
    
    ggsave("images/BarPlots_target.png")
    
    return()
}
