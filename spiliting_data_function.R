# This function will turn split a dataset into different parts by their methods
loadAndSplitData <- function(filePath) {
  # loading library
  library("dplyr")
  
  # Load the data
  dat <- read.csv(filePath)
  
  # Group the data by 'Method' and split it into separate dataframes
  splitData <- dat %>%
    group_by(Method,P,G,K) %>%
    group_split()
  
  # Return the list of split dataframes
  return(splitData)
}
# example
# Call the function
splitDataFrames <- loadAndSplitData("SimRound1_feb2024_Baseline_sunspots.csv")

# `splitDataFrames` is now a list where each element is a dataframe corresponding to a unique 'Method'

# for (group in splitDataFrames) {
#   print(summary(group))
# }