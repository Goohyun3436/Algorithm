let fs = require('fs');
const input = fs.readFileSync(0, 'utf-8').trim().split('\n');

const x = parseInt(input[0]);
const y = parseInt(input[1]);

x > 0 && y > 0
  ? console.log(1)
  : x < 0 && y > 0
  ? console.log(2)
  : x < 0 && y < 0
  ? console.log(3)
  : console.log(4);