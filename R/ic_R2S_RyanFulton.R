StartHere("Ryan Fulton","Workshop",date())

j = 1
1 -> i
i + 1 -> i

98.6 -> fahr
fahr + 1.4 -> fever

1 -> i
i + 1 -> i

b1 = TRUE
if(b1)
  "Hello world!" else
  "Goobye sunshine!"

fahr = 98.6; fever = 100
temp = fahr+ 2

if(temp>=fever)
  "Sick" else
    "Healthy"

TRUE -> b1
if(b1){
  print("Hello world!"); FALSE -> b1} else{
    print("Goodbye sunshine!"); TRUE -> b1
  }

fahr = 98.6; fever = 100
temp = fahr + 2

if(temp>=fever){
  print("Sick, keep in bed"); temp - 0.2 -> temp} else{
    print("Healthy, go to school."); temp + 0.7 -> temp
  }

b1 = TRUE
while(b1)
  print("Press ESC key to stop the loop.")

107 -> temp
while(temp>=100){
  print("Patient is sick, keep in bed");
  temp - 0.2 -> temp
}
print("Patient is healthy, send to school")

0 -> i
while(i<10){
  cat("i is",i,"keep counting, ");
  i + 1 -> i
}
cat("Final value of i is",i)

0 -> j
while(j<10){
  cat("I will not Facebook in class.",j);
  j + 1 -> j
}

activity = "I will not Facebook"
place = "in class!"
s3 = ""; 1 -> i

while(i<=88){
  s3 = paste(s3, activity, place);
  i + 1 -> i
}
print(s3); nchar(s3)

StartHere("Ryan Fulton","CC",date())

f = -10

while(f<=110){
  k = (f + 459.67) * (5.0/9.0);
  cat("\nFahrenheit =",f,"Kelvin =",k)
  f <- f + 5
}

strt = 0
prod = 0
sm = 0
sumofprod = 0
i = 1

while(i<=10){
  j = 1
  while(j<=6){
    prod = i*j
    sm = i+j
    sumofprod = sumofprod + prod
    j = j + 2
  }
  i = i + 1
}
strt
prod
sm
sumofprod
i
j

vowels = c("a","e","i","o","u","y");
consonants = c("b","c","d","f","g","h");
i = 1; b1 = TRUE;
while (b1) {
  cat( consonants[i], vowels[i],"m\n")
  i + 2 -> i
  if (i>length(vowels)) break;
}

fahr = 32
if (fahr<=32)
  print('freezing') else 
  print('above freezing')


x = 98.6
y = 78
if (x < y) cat("Warm") else cat("Cool");

1 -> i;
while (i <= 10) {
  if (i > 1) break;
  print( i );
  i + 1 -> i;
}

sam=3.0; jose=3.5; maria=3.6; rose=3.0
miles=64; dist=0; shift=0
while (dist < miles ) {
  dist + sam + jose + maria + rose -> dist
  shift + 1 -> shift
  cat("\nend of shift", shift)
}

you=2.8; jose=3.5; maria=3.6; rose=3.0
miles=64; dist=0; shift=0
while (dist < miles ) {
  dist + you + jose + maria + rose -> dist
  shift + 1 -> shift
  cat("\nend of shift", shift)
}

usain=6.0; jose=3.5; maria=3.6; rose=3.0
miles=64; dist=0; shift=0
while (dist < miles ) {
  dist + usain + jose + maria + rose -> dist
  shift + 1 -> shift
  cat("\nend of shift", shift)
}


























