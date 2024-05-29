let fs = require('fs');
let input = fs.readFileSync('/dev/stdin').toString();

const score = parseInt(input);

score >= 90
  ? console.log("A")
  : score >= 80
  ? console.log("B")
  : score >= 70
  ? console.log("C")
  : score >= 60
  ? console.log("D")
  : console.log("F");