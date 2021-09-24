# Nombre moyen de personnes accueillies avant le communiqué
moyenne_avant <- 112
moyenne_a_communiquer <- moyenne_avant*2

# Read data
data <- read.table("data.txt", header=TRUE, sep=",")
View(data)

# 1. Estimation ponctuelle
moyenne <- mean(data$nombreDePersonnes)
cat("Nombre moyen de personnes accueillies:", moyenne)

# Visualisation
hist(data$nombreDePersonnes, xlab="Nombre de personnes", main="Histogramme")
abline(v=moyenne_a_communiquer, col="red")
abline(v=moyenne, col="blue")

# 2. Intervalle de confiance à 95%
t.test(data$nombreDePersonnes, conf.level=0.95, alternative = "less")

# 3. Test d'hypothèse
t.test(data$nombreDePersonnes, mu=moyenne_a_communiquer, conf.level=0.95, alternative = "less")


# Références
# http://larmarange.github.io/analyse-R/intervalles-de-confiance.html