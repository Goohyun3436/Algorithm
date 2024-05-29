let fs = require('fs');
let input = fs.readFileSync('/dev/stdin').toString().split('\n');

const A = parseInt(input[0]);
const B_1 = parseInt(input[1][2]);
const B_10 = parseInt(input[1][1]);
const B_100 = parseInt(input[1][0]);

const res3 = A * B_1;
const res4 = A * B_10;
const res5 = A * B_100;
const res6 = res3 + res4 * 10 + res5 * 100;

console.log(res3);
console.log(res4);
console.log(res5);
console.log(res6);