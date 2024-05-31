let input = require('fs').readFileSync(0, 'utf-8').trim().toUpperCase().split('');

let dict = {};
input.map((str) => (dict[str] = (dict[str] || 0) + 1));
const max = Math.max(...Object.values(dict));
const found = Object.entries(dict).filter(([key, value]) => value >= max);

console.log(found.length > 1 ? '?' : found[0][0]);