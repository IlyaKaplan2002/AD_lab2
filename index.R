data <- read.csv('./data/population_usa.csv')
attach(data)

cor.test(Population, Urban.Population)
cor.test(Population, World.Population)
cor.test(Urban.Population, World.Population)

# cor(populationModel$model$Population, populationModel$fitted.values)
# cor(urbanPopulationModel$model$Urban.Population, urbanPopulationModel$fitted.values)
# cor(worldPopulationModel$model$World.Population, worldPopulationModel$fitted.values)


populationModel <- lm(Population ~ Urban.Population + World.Population)
urbanPopulationModel <- lm(Urban.Population ~ Population + World.Population)
worldPopulationModel <- lm(World.Population ~ Urban.Population + Population)

cor.test(populationModel$model$Population, populationModel$fitted.values)
cor.test(urbanPopulationModel$model$Urban.Population, urbanPopulationModel$fitted.values)
cor.test(worldPopulationModel$model$World.Population, worldPopulationModel$fitted.values)
