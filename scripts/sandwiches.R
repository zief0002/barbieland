library(tidyverse)

# Import full_sandwiches.csv
all_sandwiches = read_csv(file.choose())


# Create sandwich.csv
set.seed(42)

sandwiches = all_sandwiches |>
  sample_n(40)


sandwiches |>
  write.csv("~/Desktop/sandwiches.csv")


sandwiches


gf_histogram(
  ~sodium, data = sandwiches, 
  color = "black", 
  fill = "pink",
  xlab = "Sodium (mg per cup)",
  ylab = "Count"
)


df_stats(~sodium, data = sandwiches)

