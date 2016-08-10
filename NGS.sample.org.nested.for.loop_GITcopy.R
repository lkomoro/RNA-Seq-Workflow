
setwd('...')#make this your parent directory
getwd()
parent <- '/Volumes/LaCie/Project_Fangue_150114_HS4B_Jan_27'#change this to be whatever folder all your sample subfolders live in
subdirs <- list.dirs(parent,full.names=TRUE,recursive=FALSE)#need recursive to be false else it includes the parent directory as well in the list and messes up the length, etc.
outfile1 <- "combined_R1"
outfile2 <- "combined_R2"
for (i in 1:length(subdirs)){ 
  dir1 <- subdirs[i]
  sequences <- list.files(dir1,full.names=TRUE)#needs to be true so it has the full paths of the directories to go into
  R1s <- grep("R1", sequences)
  R2s <- grep("R2", sequences)
  #note that if you have a 'data' subdirectory with the summary stats, etc. you may need to move it out of the parent directory first, because 
  #since it doesn't contain any files that have 'R1' or 'R2' in the name, the for loop may get stuck there.
  
  for (k in 1:length(R1s)){
    t <- scan(file = sequences[R1s[k]], what = 'character',sep="\r",quote="")
    write(t, file= paste0(strsplit(dir1, '/')[[1]][5], "_",outfile1), append=TRUE)}#depending on how long your paths are (where your files are stored), the [5] may need to be changed to higher or lower to label your output files with the sample names (i.e., the name of your subdirectory folder)
  #you can easily figure this out by just taking the full path of one of your subdirectories and running strsplit on it (or just counting). strsplit will return each component with the parse # it has assigned it
  
  for (k2 in 1:length(R2s)){
    t2 <- scan(file = sequences[R2s[k2]], what = 'character',sep="\r",quote="")
    write(t2, file= paste0(strsplit(dir1, '/')[[1]][5], "_",outfile2), append=TRUE)   
  } 
  
} 
