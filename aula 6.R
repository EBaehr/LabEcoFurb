library("WDI")

options(scipen = 999)

#DADOS EM PAINEL

femaleOOS <- WDI(country = "all",
                 indicator = "SE.SEC.UNER.LO.FE.ZS")
library("tidyverse")

graficopainel <- ggplot(femaleOOS,
                        mapping = aes(y= SE.SEC.UNER.LO.FE.ZS,
                                      x= year)) +
  geom_point()
print(graficopainel)

# CORTE TRANSVERSAL

femaleOOS23 <- WDI(country = "all",
                   indicator = "SE.SEC.UNER.LO.FE.ZS",
                   start = 2023, end = 2023)

graficorte <- ggplot(femaleOOS23,
                     mapping = aes(y= SE.SEC.UNER.LO.FE.ZS,
                                   x= year)) +
  geom_point()

print(graficorte)

#SERIE TEMPORAL

femaleOOSBR <- WDI(country = "BR",
                   indicator = "SE.SEC.UNER.LO.FE.ZS" )

graficoserie <- ggplot(femaleOOSBR,
                       mapping = aes(y= SE.SEC.UNER.LO.FE.ZS,
                                     x= year)) +
  
  geom_line()
print(graficoserie)
