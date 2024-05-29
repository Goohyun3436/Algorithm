const fs = require('fs');
const input = fs.readFileSync(0, 'utf-8').trim();

let res = [];
for (let i = 1; i <= parseInt(input); i++) {
  res.push("*".repeat(i));
}

console.log(res.join("\n"));