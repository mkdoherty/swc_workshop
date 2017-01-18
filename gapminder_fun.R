#Header and shit

download.file("https://raw.githubusercontent.com/swcarpentry/r-novice-gapminder/gh-pages/_episodes_rmd/data/gapminder-FiveYearData.csv", destfile = "gapminder-FiveYearData.csv")
gapminder <- read.csv("gapminder-FiveYearData.csv")
head(gapminder)
colnames(gapminder)
str(gapminder)
is_long_lifeExp <- gapminder$lifeExp > 80
gapminder[is_long_lifeExp,]
africa <- gapminder$country=="Africa"
summary(africa)
gapminder$country
str(gapminder)
africa <- gapminder$continent=="Africa"
sum(africa)
summary(africa)
africa <- gapminder[gapminder$continent=="Africa",]
summary(africa)
africa2007 <- africa[africa$year==2007,]
summary(africa2007)
africa2007 <- africa[africa$year==2007, c("country", "lifeExp")]
summary(africa2007)
o <- order(africa2007$lifeExp)
africa2007[o,]
africa2007[-o,]
africa2007[o,]
africa2007[rev(o),]
ggplot(gapminder, aes(x = gdpPercap, y=lifeExp)) +
geom_point()
ggplot(gapminder, aes(x = year, y=lifeExp)) +
geom_point()
ggplot(gapminder, aes(x = year, y=lifeExp, color= continent)) + geom_point()
