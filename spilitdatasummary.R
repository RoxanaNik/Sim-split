# This function is summarizing a dataframe that was created by the splitdatafunction
summarizeSplitData <- function(filePath) {
  # Assuming the 'loadAndSplitData' function is defined
  
  # Load and split the data
  splitDataFrames <- loadAndSplitData(filePath)
  
  # perform over each group and print its summary
  for (group in splitDataFrames) {
    print(summary(group))
  }
}
# example
summarizeSplitData("SimRound1_feb2024_Baseline_sunspots.csv")