const n = parseInt(require('fs').readFileSync(0, 'utf-8').trim());
const l = 1;
console.log(4 * n * l);

// 실선의 윗변 길이: n * l
// 실선의 옆변 길이: 2 * (n * l)
// 실선의 밑변 길이: n * l
// 모두 더하면: 4 * n * l