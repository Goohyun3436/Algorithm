let [x, y, w, h] = require('fs').readFileSync(0, 'utf-8').trim().split(' ').map(Number);
console.log(Math.min(x, y, w - x, h - y));