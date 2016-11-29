size(400,400);

int[] size = { 
  50, 61, 83, 69, 71, 50, 29, 31, 17, 39
};


fill(0);
 rect( width/2, height/2, size[0],size[0]);


// Durchs array loopen
for (int i = 0; i < size.length; i++) {
  rect(0, i*10, size[i], 8);
}