#install.packages("WDI")
library(WDI)

options(scipen = 999) # REMOVER A NOT. CIENT.
# DADOS EM PAINEL
dadospib <- WDI(country = 'all',
                indicator = 'SE.SEC.UNER.LO.FE.ZS')

paises <- c('BR', 'US')

dadosfemaleoutofschool <- WDI(country = paises,
                    indicator = 'SE.SEC.UNER.LO.FE.ZS')

# CORTE TRANSVERSAL
dadosfemaleoutofschool23 <- WDI(country = 'all',
                    indicator = 'SE.SEC.UNER.LO.FE.ZS',
                    start = 2023, end = 2023)

# SÉRIE TEMPORAL
dadosfemaleoutofschoolbr <- WDI(country = 'BR',
                  indicator = 'SE.SEC.UNER.LO.FE.ZS')