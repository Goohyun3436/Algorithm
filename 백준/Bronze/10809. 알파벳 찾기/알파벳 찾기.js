let input = require('fs').readFileSync(0, 'utf-8').trim();
const alphabet = 'abcdefghijklmnopqrstuvwxyz'.split('');

let res = [];
alphabet.map((char) => {
  res.push(`${input.indexOf(char)}`);
});
console.log(res.join(' '));