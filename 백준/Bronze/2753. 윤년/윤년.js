let fs = require('fs');
let input = fs.readFileSync('/dev/stdin').toString();

const year = parseInt(input);

const isInt = (num) => num % 1 === 0;

(isInt(year / 4) && !isInt(year / 100)) || isInt(year / 400)
  ? console.log(1)
  : console.log(0);