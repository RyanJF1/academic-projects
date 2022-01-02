StartHere("Ryan Fulton","Workshop",date())

b1= TRUE
if(b1)
  "Hello world" else
    "Goodbye Sunshine"

s1 = "na,"
s2 = "hey, hey, hey"
song = s1; i = 0
while(i<7){
  i + 1 -> i
  song = paste(song,s1)
}
song = paste(song,s2,"Goodbye")
song;nchar(song)

s1 = "Hello world"
n = nchar(s1); i = 0
while(i<n){
  i + 1 -> i
  c = substr(s1,i,i)
  cat(c,showNum(c),",")
}
cat("Final value of i is",i)

showNum("Ryan Fulton")

hash25 <- function(s){
  as.integer(5381) -> h
  0 -> i; nchar(s) -> nc
  while(i < nc){
    i+1 -> i
    substr(s,i,i) -> c
    showNum(c) -> cval
    mask(h,25)*33 + cval -> h
  }
  return(h)
}

hash25("a")
hash25("Hello World")
hash25("hello world")
PantherID <- "123456789"
hash25(PantherID)

StartHere("Ryan Fulton","CC",date())

hash25("a")
hash25("Hello World")
hash25("goodbye sunshine")

hash25("Robinson College of Business is the largest business school in the southeast.")

s1 = "work"
s2 = "you see me I be"
song = s1; i = 0
while(i<65){
  i + 1 -> i
  song = paste(song,s1)
}
song = paste(song,s2)
song
hash25(song)



















