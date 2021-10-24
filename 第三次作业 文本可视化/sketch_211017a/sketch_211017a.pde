size(600, 600);
background(255);
colorMode(HSB, 100, 100, 100);
float ww=50;
String[] txt={"'I","Love","Processing","Forever'" ,"Crying"};
for(int i=0;i<txt.length;i++){
 for(int j=0;j<txt[i].length(); j++){
   char c=txt[i].charAt(j);
   int cl=int(c)/3*2;
   fill(cl,cl,cl/4*5);
   noStroke();
   rect(j*ww,i*ww,50,50);
   
 }
}
