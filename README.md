Heights of Husband and Wife Analysis
This R script analyzes the relationship between husbands' and wives' heights using covariance, correlation, and simple linear regression.

## 📁 Project Structure
```
math3424-problem10/
├── Heights of husband and wife.txt    # Raw dataset (90 rows, 2 columns)
├── problem10_analysis.R               # Full R analysis script
└── README.md                           # Project documentation
```

## 🎯 Key Analyses Performed
| Part | Description |
|------|-------------|
| (a) | Calculate covariance between husbands' and wives' heights (in cm²) |
| (b) | Convert heights to inches and recalculate covariance (in in²) |
| (c) | Compute Pearson correlation coefficient |
| (d) | Test correlation with a perfect linear relationship (`Wife = Husband - 5 cm`) |
| (e) | Fit simple linear regression model (`Wife ~ Husband`) |
| (f) | Test null hypothesis \( H_0: \beta_1 = 0 \) (slope significance) |
| (g) | Test null hypothesis \( H_0: \beta_0 = 0 \) (intercept significance) |

## 🛠️ How to Run
### Prerequisites
- R installed (download from [CRAN](https://cran.r-project.org/))
- The raw dataset `Heights of husband and wife.txt` placed in the correct directory

### Run the Script
1. Open R or RStudio.
2. Set the working directory to the project folder (or update the `file` path in `read.table()` to match your local path).
3. Run the full script:
   ```r
   source("problem10_analysis.R")
   ```

## 📊 Expected Output
When you run the script, you should see:
1. **Data Validation**:
   - Number of rows/columns: `90 / 2`
   - Missing values: `0`
2. **(a) Covariance (cm²)**: ~`64.928`
3. **(b) Covariance (in²)**: ~`10.064`
4. **(c) Correlation Coefficient**: ~`0.737`
5. **(d) Correlation (Wife = Husband - 5 cm)**: `1.000`
6. **(e) Regression Model**:
   - Intercept ≈ `43.569`, Slope ≈ `0.708`
   - Residual standard error ≈ `5.217`, \( R^2 \approx 0.543 \)
7. **(f) Slope p-value**: ≈ `2.2e-16` → Reject \( H_0 \)
8. **(g) Intercept p-value**: ≈ `1.46e-07` → Reject \( H_0 \)

## 📌 Notes
- The script uses `stringsAsFactors = FALSE` for data import (compatible with R ≥ 4.0).
- All numerical results are rounded to 3 decimal places for readability.
