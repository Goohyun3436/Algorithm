let input = require('fs').readFileSync(0, 'utf-8').trim().split('\n');

const toScore = {
  'A+': 4.5,
  'A0': 4.0,
  'B+': 3.5,
  'B0': 3.0,
  'C+': 2.5,
  'C0': 2.0,
  'D+': 1.5,
  'D0': 1.0,
  'F': 0.0,
};

let hours = 0;
let scores = 0;

for (let record of input) {
  const [subject, hour, grade] = record.split(' ');

  if (grade === 'P') continue;
  hours += Number(hour);
  scores += Number(hour) * toScore[grade];
}

console.log((scores / hours).toFixed(6));