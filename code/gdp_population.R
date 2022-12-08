
``{r}
gapminder_1997 <- read_csv("data/gapminder_1997.csv")

ggplot(data=gapminder_1997)
aes(x=gdpPercap)
aes(y = lifeExp)
lab(x ="GDP Per Capita") +labs(y=LifeCycleSavings)



library(tidyverse)
gapminder_1997 <- read_csv("gapminder_1997.csv")

ggplot(data=gapminder_1997) +
aes(x = gdpPercap, y=lifeExp, color = continent, size = pop/100000) +
geom_point() +
labs(x = "GDP Per Capita", y = "Life Expectancy",
     title = "Do people in wealthy countires live longer?",
     size = "Population (in millions)") +
  scale_color_brewer(palette = "Set1")

gapminder_data <- read_csv("gapminder_data.csv")


ggplot(gapminder_data) +
  aes(x = year, y = lifeExp, color = continent, group=country) +
  geom_line()

ggplot(data = gapminder_data) +
aes(x = continent, y = lifeExp, color=continent) +
  geom_jitter() +
  geom_boxplot(color ="black") 


ggplot(data = gapminder_data) +
  aes(x = continent, y = lifeExp) +
  geom_jitter(aes(color=continent)) +
  geom_boxplot(fill ="yellow") 


ggplot(data = gapminder_data) +
  aes(x = continent, y = lifeExp) +
  geom_boxplot() +
  geom_jitter(alpha=0.5)

ggplot(data=gapminder_1997)+
aes(x=lifeExp) +
  geom_histogram(binwidth=5)

ggplot(data=gapminder_1997)+
  aes(x=lifeExp) +
  geom_histogram(binwidth=20) +
  theme_bw

ggplot(gapminder_1997) +
  aes(x=gdpPercap, y=lifeEXp) +
  geom_point()

ggplot(data=gapminder_1997) +
  aes(x=gdpPercap, y=lifeExp) +
  geom_point() +
facet_grid(rows=vars(continent))

ggplot(data=gapminder_1997) +
  aes(x=continent, y=lifeExp) +
  geom_violin(aes(fill=continent)) +
  theme_classic()
ggsave("awesome_plot.jpg")

violin_plot <- ggplot(data=gapminder_1997) +
  aes(x=continent, y=lifeExp) +
  geom_violin(aes(fill=continent)) +
  theme_classic()
violin_plot
ggsave("awesome_plot.jpg", plot=violin_plot, width=6, height=4)

ggplot(data=gapminder_1997) +
  aes(x=gdpPercap,y=continent) +
  geom_dotplot

install.packages("gganimate")
install.packages("gifski")


library(gganimate)
library(gifski)

staticPlot <- ggplot(data=gapminder_data) +
  aes(x=log(gdpPercap), y=lifeExp, color=continent, size=pop) +
  geom_point(alpha=0.5) +
  theme_classic()+
  labs(x="GDP per capita", y = "Life expectancy", color = "Continent",
       size="population in millions") +
  scale_color_brewer(palette="Set1") 
  ggsave("static_plot)
  
  
  animated_plot <- static_plot +
  transition_states(year,  transition_length = 1, state_length = 1) +
  ggtitle("{closest_state}")




animatedPlot <- staticPlot +
  transition_states(year) +
  ggtitle("{closest_state}")
animatePlot

library(gganimate)
library(gifski)

animatePlot <- staticPlot +
  transition_states(year) +
  ggtitle("{closest_state}")
animatePlot





