library("ggplot2")

generateBarPlots <- function(data)
{
  len <- length(data)
  
  # Wiek
  ggplot(data, aes(x=age, y=len)) +
    geom_bar(stat = "identity", width=0.6, fill=rgb(0.1,0.4,0.5,0.7)) +
    geom_text(aes(label=age), vjust=3.8, color="black", size=3.0) + 
    theme_minimal() +
    ggtitle("Wykres zależności liczby badanych osób od ich wieku") + 
    labs(x="Wiek", y="Liczba badanych") 
  
  # Płeć
  ggplot(data, aes(x=sex, y=len)) +
    geom_bar(stat = "identity", width=0.6, fill=rgb(0.1,0.4,0.5,0.7)) +
    geom_text(aes(label=sex), vjust=1.5, color="black", size=3.0) + 
    theme_minimal() +
    ggtitle("Wykres zależności liczby badanych osób od ich płci") + 
    labs(x="Płeć (1 = mężczyzna, 0 = kobieta)", y="Liczba badanych")
  
  # Ból w klatce piersiowej
  ggplot(data, aes(x=cp, y=len)) +
    geom_bar(stat = "identity", width=0.6, fill=rgb(0.1,0.4,0.5,0.7)) +
    theme_minimal() +
    ggtitle("Wykres zależności liczby badanych osób od typu bólu w klatce piersiowej") + 
    labs(x="Typ bólu w klatce piersiowej", y="Liczba badanych")
  
  # Ciśnienie krwi
  ggplot(data, aes(x=trestbps, y=len)) +
    geom_bar(stat = "identity", width=0.8, fill=rgb(0.1,0.4,0.5,0.7)) +
    geom_text(aes(label=trestbps), vjust=2.8, color="black", size=2.5) + 
    theme_minimal() +
    ggtitle("Wykres zależności liczby badanych osób od ich ciśnienia krwi") + 
    labs(x="Ciśnienie krwi", y="Liczba badanych")
  
  # Cholesterol
  ggplot(data, aes(x=chol, y=len)) +
    geom_bar(stat = "identity", width=1.5, fill=rgb(0.1,0.4,0.5,0.7)) +
    theme_minimal() +
    ggtitle("Wykres zależności liczby badanych osób od ich poziomu cholesterolu") + 
    labs(x="Poziom cholesterolu", y="Liczba badanych")
  
  # Poziom cukru we krwi
  ggplot(data, aes(x=fbs, y=len)) +
    geom_bar(stat = "identity", width=0.6, fill=rgb(0.1,0.4,0.5,0.7)) +
    geom_text(aes(label=fbs), vjust=1.5, color="black", size=3.0) + 
    theme_minimal() +
    ggtitle("Wykres zależności liczby badanych osób od ich poziomu cukru we krwi na czczo") + 
    labs(x="Poziom cukru we krwi na czczo 120 mg/dL (1 = wykryto, 0 = nie wykryto)", y="Liczba badanych")
  
  # Test EKG
  ggplot(data, aes(x=restecg, y=len)) +
    geom_bar(stat = "identity", width=0.6, fill=rgb(0.1,0.4,0.5,0.7)) +
    geom_text(aes(label=restecg), vjust=2.5, color="black", size=3.0) + 
    theme_minimal() +
    ggtitle("Wykres zależności liczby badanych osób od wykonania testu EKG") + 
    labs(x="Wynik testu EKG (Wartości 0, 1, 2)", y="Liczba badanych")
  
  # Maksymalne tętno
  ggplot(data, aes(x=thalach, y=len)) +
    geom_bar(stat = "identity", width=0.9, fill=rgb(0.1,0.4,0.5,0.7)) +
    geom_text(aes(label=thalach), vjust=8.5, color="black", size=2.0) + 
    theme_minimal() +
    ggtitle("Wykres zależności liczby badanych osób od wykrytego maksymalnego tętna") + 
    labs(x="Maksymalne tętno", y="Liczba badanych")
  
  # Dławica wysiłkowa
  ggplot(data, aes(x=exang, y=len)) +
    geom_bar(stat = "identity", width=0.6, fill=rgb(0.1,0.4,0.5,0.7)) +
    geom_text(aes(label=exang), vjust=2.5, color="black", size=3.0) + 
    theme_minimal() +
    ggtitle("Wykres zależności liczby badanych osób od wykrytej dławicy wysiłkowej") + 
    labs(x="Wykrycie dławicy wysiłkowej (1 = wykryto, 0 = nie wykryto)", y="Liczba badanych")
  
  # Względne obniżenie rejonu ST w w czasie aktywności fizycznej
  ggplot(data, aes(x=oldpeak, y=len)) +
    geom_bar(stat = "identity", width=0.05, fill=rgb(0.1,0.4,0.5,0.7)) +
    geom_text(aes(label=oldpeak), vjust=2.5, color="black", size=2.0) + 
    theme_minimal() +
    ggtitle("Wykres zależności liczby badanych osób od segmentu ST") + 
    labs(x="Względne obniżenie rejonu ST w w czasie aktywności fizycznej", y="Liczba badanych")
  
  # Nachylenie szczytowego odcinka ST wysiłkowego
  ggplot(data, aes(x=slope, y=len)) +
    geom_bar(stat = "identity", width=0.6, fill=rgb(0.1,0.4,0.5,0.7)) +
    geom_text(aes(label=slope), vjust=2.5, color="black", size=3.0) + 
    theme_minimal() +
    ggtitle("Wykres zależności liczby badanych osób od nachylenia szczytowego odcinka ST wysiłkowego") + 
    labs(x="Nachylenie szczytowego odcinka ST wysiłkowego", y="Liczba badanych")
  
  # Główne naczynia
  ggplot(data, aes(x=ca, y=len)) +
    geom_bar(stat = "identity", width=0.6, fill=rgb(0.1,0.4,0.5,0.7)) +
    theme_minimal() +
    ggtitle("Wykres zależności liczby badanych osób od zabarwionych głównych naczyń") + 
    labs(x="Zabarwionye główne naczynia (0-3)", y="Liczba badanych")
  
  # Gęstość thalu
  ggplot(data, aes(x=thal, y=len)) +
    geom_bar(stat = "identity", width=0.6, fill=rgb(0.1,0.4,0.5,0.7)) +
    theme_minimal() +
    ggtitle("Wykres zależności liczby badanych osób od thalu") + 
    labs(x="Thal", y="Liczba badanych")
  
  # Choroba serca
  ggplot(data, aes(x=target, y=len)) +
    geom_bar(stat = "identity", width=0.6, fill=rgb(0.1,0.4,0.5,0.7)) +
    geom_text(aes(label=target), vjust=2.5, color="black", size=3.0) +
    theme_minimal() +
    ggtitle("Wykres zależności liczby badanych osób od występowania choroby serca") + 
    labs(x="1 = obecność choroby serca, 0 = brak obecności choroby serca", y="Liczba badanych")
  
  return()
}
