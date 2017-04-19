I worked alongside Ryan Richard to figure out the bubble sorting prompt, this was our solution:
var a = [5, 1, 4, 2,8]

function bubbleBlue(a) {
var l, m;
for (var i= a.length-1; i >= 0; i--){
for(m = 0; m <= i; m++){
if(a[m+1]<a[m]){
var blue = a[m];
a[m]=a[l+1];
a[m+1]=blue;
}
}
return a;
}
