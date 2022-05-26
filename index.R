data <- read.csv('./data/population_usa.csv')
attach(data)

cor.test(Population, Urban.Population)
cor.test(Population, World.Population)
cor.test(Urban.Population, World.Population)

populationModel <- lm(Population ~ Urban.Population + World.Population)
cor(populationModel$model$Population, populationModel$fitted.values)

urbanPopulationModel <- lm(Urban.Population ~ Population + World.Population)
cor(urbanPopulationModel$model$Urban.Population, urbanPopulationModel$fitted.values)

worldPopulationModel <- lm(World.Population ~ Urban.Population + Population)
cor(worldPopulationModel$model$World.Population, worldPopulationModel$fitted.values)

cor.test(populationModel$model$Population, populationModel$fitted.values)
cor.test(urbanPopulationModel$model$Urban.Population, urbanPopulationModel$fitted.values)
cor.test(worldPopulationModel$model$World.Population, worldPopulationModel$fitted.values)
