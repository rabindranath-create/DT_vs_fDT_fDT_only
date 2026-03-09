# main_template.R

cat("Working directory:", getwd(), "\n")

output_dir <- file.path(getwd(), "outputs/script15")
dir.create(output_dir, recursive = TRUE, showWarnings = FALSE)
cat("Created directory:", output_dir, "\n")

source("DTvsfDT.R")


obs_gen_para <- read.csv("patter_new/obstacle_1.csv")

dt <- 15 


the_result <- fDT_Alg_save(obs_gen_para, dt)


file_name <- file.path(output_dir, paste0("fDT15_1.rds"))
saveRDS(the_result, file = file_name)
