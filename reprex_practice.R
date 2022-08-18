##------Practicing reprex------#


#Below is the code we want to run but there's and issue:
library(tidyverse)
library(palmerpenguins)

penguins |> 
  select(species, body_mass_g, flipper_length_mm, year) |> 
  filter(species == "Chinstrap") |> 
  str_to_lower(species) |> 
  group_by(islands) |> 
  summarize(mean(body_mass_g, na.rm = TRUE),
            mean(flipper_length_mm, na.rm = TRUE))

## str_to_lower is the issue, here is how we could make a minimum viable example:
#for this, could use any dataset to look at how to lowercase

##REPREX------

#warpbreaks is good small, base R dataset

library(tidyverse)
warpbreaks |> 
  str_to_lower(wool)

#now we are getting the same error with just one line
#to create a reprex, copy the code to your clipboard then run reprex() in the console
#creates an output that is rendered well to copy to github

#reprex() default is github, but can add venue = for another, i.e. slack

#create a reprex in response to solve an issue:
library(tidyverse)
warpbreaks |> 
  mutate(wool = str_to_lower(wool))

### can also make a simpler reprex with a synthetic data frame

example <- tribble(
  ~name, ~bday,
  "Erica", "May",
  "Jessica", "February")

example |> 
  str_to_lower(bday)

