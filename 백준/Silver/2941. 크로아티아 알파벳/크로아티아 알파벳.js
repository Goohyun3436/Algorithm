let input = require('fs').readFileSync(0, 'utf-8').trim();
let croatia = /c=|c-|dz=|d-|lj|nj|s=|z=/gi;

console.log(input.replace(croatia, '!').split('').length);
