library("ggplot2")

generateBarPlots <- function(data)
{
  dataPrep <- data
  
  # Płeć
  dataPrep$sex <- recode(dataClean$sex, "male"="mężczyzna", "female"="kobieta", .default="MISSING")
  
  ggplot(dataPrep, aes(x=sex)) +
    geom_bar( width=0.8, fill="steelblue") +
    theme_minimal() +
    ggtitle("Wykres płci") + 
    labs(x="Płeć", y="Liczba badanych")
  
  ggsave("images/barplot-sex.png")
  
  # Ból w klatce piersiowej
  dataPrep$cp <- recode(dataClean$cp, "typical-angina"="typowy ból stenokardialny", "atypical-angina"="atypowy ból stenokardialny", "non-anginal-pain"="ból niedławicowy","asymptomatic"="brak bólu", .default="MISSING")
  
  ggplot(dataPrep, aes(x=cp)) +
    geom_bar( width=0.8, fill="steelblue") +
    theme_minimal() +
    ggtitle("Źródło bólu w klatce piersiowej") + 
    labs(x="Typ bólu w klatce piersiowej", y="Liczba badanych")
  
  ggsave("images/barplot-cp.png")
  
  # Poziom cukru we krwi na czczo
  dataPrep$fbs <- ifelse(dataClean$fbs,"Tak","Nie")
  
  ggplot(dataPrep, aes(x=fbs)) +
    geom_bar( width=0.8, fill="steelblue") +
    theme_minimal() +
    ggtitle("Poziom cukru we krwi na czczo") + 
    labs(x="Czy poziom cukru przekraczał 120 mg/dl?", y="Liczba badanych")
  
  ggsave("images/barplot-fbs.png")
  
  # Test EKG
  dataPrep$restecg <- recode(dataClean$restecg, "normal"="w normie", "LVH"="Przerost lewej komory", "ST abnormality"="Anomalie odcinka ST", .default="MISSING")
  ggplot(dataPrep, aes(x=restecg)) +
    geom_bar(width=0.8, fill="steelblue") +
    theme_minimal() +
    ggtitle("Wyniki EKG") + 
    labs(x="Wynik testu EKG", y="Liczba badanych")
  
  ggsave("images/barplot-restecg.png")
  
  # Dławica wysiłkowa
  dataPrep$exang <- ifelse(dataClean$exang,"Tak","Nie")
  
  ggplot(dataPrep, aes(x=exang)) +
    geom_bar(width=0.8, fill="steelblue") +
    theme_minimal() +
    ggtitle("Dławica wysiłkowa wśród pacjentów") + 
    labs(x="Wykrycie dławicy wysiłkowej", y="Liczba badanych")
  
  ggsave("images/barplot-exang.png")
  
  # Nachylenie szczytowego odcinka ST wysiłkowego
  dataPrep$slope <- recode(dataClean$slope, "downsloping"="malejący", "flat"="płaski", "upsloping"="rosnący", .default="MISSING")
  
  ggplot(dataPrep, aes(x=slope)) +
    geom_bar(width=0.8, fill="steelblue") +
    theme_minimal() +
    ggtitle(" Nachylenie segmentu ST podczas próby wysiłkowej") + 
    labs(x="Poziom nachylenia", y="Liczba badanych")
  
  ggsave("images/barplot-slope.png")
  
  # Główne naczynia
  ggplot(data, aes(x=ca)) +
    geom_bar(width=0.8, fill="steelblue") +
    theme_minimal() +
    ggtitle("Liczba głównych naczyń wyróżnionych podczas koronarografii") + 
    labs(x="Zabarwione główne naczynia - od 0 do 3", y="Liczba badanych")
  
  ggsave("images/barplot-ca.png")
  
  # Wynik scyntygrafii mięśnia sercowego
  dataPrep$thal <- recode(dataClean$thal, "rev. defect"="defekt ustępujący", "fixed defect"="stały defekt", "normal"="brak upośledzenia", .default="MISSING")
  ggplot(dataPrep, aes(x=thal)) +
    geom_bar(width=0.8, fill="steelblue") +
    theme_minimal() +
    ggtitle("Wynik scyntygrafii mięśnia sercowego") + 
    labs(x="Grupa wynikowa", y="Liczba badanych")
  
  ggsave("images/barplot-thal.png")
  
  # Choroba serca
  ggplot(data, aes(x=target)) +
    geom_bar(width=0.8, fill="steelblue") +
    theme_minimal() +
    ggtitle("Prawdopodobieństwo wystąpienia choroby") + 
    labs(x="Grupa diagnozowa", y="Liczba badanych")
  
  ggsave("images/barplot-diag.png")
  
  return()
}
