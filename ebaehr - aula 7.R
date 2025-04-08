library("WDI")
library("ggplot2")
library(dplyr)

# DADOS EM PAINEL

femaleOOS <- WDI(country = "all",
                 indicator = "SE.SEC.UNER.LO.FE.ZS")

graficopainel_modificado <- ggplot(femaleOOS, 
                                   mapping = aes(x = year, y = SE.SEC.UNER.LO.FE.ZS)) +
  geom_smooth(method = "loess", se = FALSE, size = 1, alpha = 0.5, color = "black") + 
  geom_point(aes(color = ifelse(country == "Brazil", "red", "black")), 
             size = 2, shape = 16) +
  ggtitle("Porcentagem de Mulheres Fora da Escola - Todos os Países") +
  labs(x = "Ano", y = "Porcentagem") +
  theme_minimal(base_size = 14) +
  theme(
    text = element_text(family = "Arial", color = "black"),
    axis.title.x = element_text(size = 16, face = "bold"),
    axis.title.y = element_text(size = 16, face = "bold"),
    plot.title = element_text(size = 18, face = "bold", hjust = 0.5), 
    legend.position = "none")+
  scale_color_identity()

print(graficopainel_modificado)


#CORTE TRANSVERSAL

femaleOOS23 <- WDI(country = "all",
                   indicator = "SE.SEC.UNER.LO.FE.ZS",
                   start = 2023, end = 2023)

graficopainel_modificado_2023 <- ggplot(femaleOOS23, 
                                        mapping = aes(x = year, y = SE.SEC.UNER.LO.FE.ZS)) +
  geom_smooth(method = "loess", se = FALSE, size = 1, alpha = 0.5, color = "black") + 
  geom_point(aes(color = ifelse(country == "Brazil", "red", "black")), 
             size = 2, shape = 16) +
  ggtitle("Mulheres Fora da Escola - 2023") +
  labs(x = "Ano", y = "Porcentagem") +
  theme_minimal(base_size = 14) +
  theme(
    text = element_text(family = "Arial", color = "black"),
    axis.title.x = element_text(size = 16, face = "bold"),
    axis.title.y = element_text(size = 16, face = "bold"),
    plot.title = element_text(size = 18, face = "bold", hjust = 0.5), 
    legend.position = "none")+
  scale_color_identity()

print(graficopainel_modificado_2023)
  

#SÉRIE TEMPORAL

femaleOOSBR <- WDI(country = "BR",
                   indicator = "SE.SEC.UNER.LO.FE.ZS")
graficoserie_modificado <- ggplot(femaleOOSBR, 
                                  mapping = aes(x = year, y = SE.SEC.UNER.LO.FE.ZS)) +
  geom_line(color = "red", size = 1.2) +
  ggtitle("Mulheres Fora da Escola no Brasil") +
  labs(x = "Ano", y = "Porcentagem") +
  theme_minimal(base_size = 14) +
  theme(
    text = element_text(family = "Arial", color = "black"), # Fonte e cor do texto
    axis.title.x = element_text(size = 16, face = "bold"),
    axis.title.y = element_text(size = 16, face = "bold"),
    plot.title = element_text(size = 18, face = "bold", hjust = 0.5), # Título centralizado e em negrito
    legend.position = "none")
print(graficoserie_modificado)
