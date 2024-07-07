let [l1, l2, l3] = require('fs').readFileSync(0, 'utf-8').trim().split(' ').map(Number);

if (isTriangle(l1, l2, l3)) {
  console.log(l1 + l2 + l3);
} else {
  console.log(2 * (l1 + l2 + l3 - Math.max(l1, l2, l3)) - 1);
}

function isTriangle(l1, l2, l3) {
  if (!(l1 === l2 && l2 === l3) && Math.max(l1, l2, l3) * 2 >= l1 + l2 + l3) {
    return false;
  } else {
    return true;
  }
}