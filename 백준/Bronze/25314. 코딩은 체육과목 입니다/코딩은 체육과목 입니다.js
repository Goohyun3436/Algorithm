const fs = require('fs');
const input = fs.readFileSync(0, 'utf-8').trim();

let res = "";
for (let i = 0; i < parseInt(input) / 4; i++) {
  res += "long ";
}
console.log(res + "int");