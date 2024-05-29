const fs = require('fs');
const input = fs.readFileSync(0, 'utf-8').trim().split('\n');

const N = parseInt(input[0]);
const scores = input[1].split(" ").map(Number);
const max = Math.max(...scores);

let average = 0;
scores.map((score) => {
  average += ((score / max) * 100) / N;
});

console.log(average);