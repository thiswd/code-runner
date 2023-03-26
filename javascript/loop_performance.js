// For measuring the performance. You also need a console.endTime with the same string within parentheses
console.time("Array initialize");

let array = [];
for (let i = 0; i < 1000000; i++) {
  array.push(i);
}

let startTime = performance.now();
for (let i = 0; i < array.length; i++) {
  // Do nothing
}
let endTime = performance.now();
console.log('For Loop: ' + (endTime - startTime).toFixed(5) + ' milliseconds');

startTime = performance.now();
array.forEach(function(element) {
  // Do nothing
});
endTime = performance.now();
console.log('ForEach: ' + (endTime - startTime).toFixed(5) + ' milliseconds');

startTime = performance.now();
for (let element of array) {
  // Do nothing
}
endTime = performance.now();
console.log('For...of Loop: ' + (endTime - startTime).toFixed(5) + ' milliseconds');

startTime = performance.now();
let newArray = array.map(function(element) {
  // Do nothing
});
endTime = performance.now();
console.log('Map: ' + (endTime - startTime).toFixed(5) + ' milliseconds');

startTime = performance.now();
let sum = array.reduce(function(accumulator, element) {
  // Do nothing
}, 0);
endTime = performance.now();
console.log('Reduce: ' + (endTime - startTime).toFixed(5) + ' milliseconds');

console.timeEnd("Array initialize")
