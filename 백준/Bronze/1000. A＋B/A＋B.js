let fs = require('fs');
let input = fs.readFileSync('/dev/stdin').toString().split(' ');

let sum = 0;
input.forEach((num) => {
  sum += Number(num);
});

console.log(sum);