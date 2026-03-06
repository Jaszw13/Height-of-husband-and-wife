height_data <- read.table(
  file = "THE LOCATION OF THE DATASET",
  header = TRUE,                 
  sep = "\t",                   
  stringsAsFactors = FALSE        
)
# (a)
cov_husband_wife <- cov(height_data$Husband, height_data$Wife)
round(cov_husband_wife, 3)  # Round to 3 decimal places
# (b)
# Convert heights to inches and calculate covariance
height_data_inches <- height_data / 2.54  # 1 inch = 2.54 cm (equivalent to ×0.393701)
cov_husband_wife_inches <- cov(height_data_inches$Husband, height_data_inches$Wife)
round(cov_husband_wife_inches, 3)
# (c)
corr_husband_wife <- cor(height_data$Husband, height_data$Wife)
round(corr_husband_wife, 3)
# (d)
# Part (d): Simulate Wife = Husband - 5 and compute correlation
height_data$Wife_d <- height_data$Husband - 5  # New Wife height (5 cm shorter)
corr_d <- cor(height_data$Husband, height_data$Wife_d)  # Calculate correlation

# Print result
cat("Part (d) Correlation Coefficient (Wife = Husband - 5 cm):", round(corr_d, 3), "\n")
# (e)
# Fit regression model
reg_model <- lm(Wife ~ Husband, data = height_data)

# View full regression output
summary(reg_model)
# (f)
# Part (f): Test if slope (Husband's coefficient) is zero
# Extract slope's p-value from regression output
slope_pvalue <- coef(summary(reg_model))["Husband", "Pr(>|t|)"]

# Hypothesis test decision
cat("Part (f) Slope p-value:", format(slope_pvalue, scientific = TRUE), "\n")
if (slope_pvalue < 0.05) {
  cat("Part (f) Conclusion: we have sufficient evidance to Reject H0 at significant level α=0.05\n")
} else {
  cat("Part (f) Conclusion: we do not have sufficient evidance to Reject H0 at significant level α=0.05)\n")
}
# (g)
# Part (g): Test if intercept is zero
# Extract intercept's p-value from regression output
intercept_pvalue <- coef(summary(reg_model))["(Intercept)", "Pr(>|t|)"]

# Hypothesis test decision
cat("Part (g) Intercept p-value:", format(intercept_pvalue, scientific = TRUE), "\n")
if (intercept_pvalue < 0.05) {
  cat("Part (g) Conclusion: we have sufficient evidance to Reject H0 at significant level α=0.05\n")
} else {
  cat("Part (g) Conclusion: we do not have sufficient evidance to Reject H0 at significant level α=0.05\n")
}
