function mysteryScoping1() {
  let x = 'out of block';
  if (true) {
    let x = 'in block';
    console.log(x);
  }
  console.log(x);
}

function mysteryScoping2() {
  const x = 'out of block';
  if (true) {
    const x = 'in block';
    console.log(x);
  }
  console.log(x);
}

function mysteryScoping3() {
  const x = 'out of block';
  if (true) {
  const x = 'in block';
    console.log(x);
  }
  console.log(x);
}

function mysteryScoping4() {
  let x = 'out of block';
  if (true) {
    let x = 'in block';
    console.log(x);
  }
  console.log(x);
}

function mysteryScoping5() {
  let x = 'out of block';
  if (true) {
    let x = 'in block';
    console.log(x);
  }
  let x = 'out of block again';
  console.log(x);
}


function madlib(verb, adj, noun) {
  // debugger;
  console.log(`We shall ${verb} the ${adj} ${noun}`);
}

madlib("verb", "adj", "noun");

function isSubstring(searchStr, subStr) {
  let arr = searchStr.split(" ");
  return arr.includes(subStr);
}


function fizzBuzz(array) {
  let newArr = []
  array.forEach(el => {
    if ((el % 3 === 0) ^ (el % 5 === 0)) {
      newArr.push(el);
    } 
  });
  return newArr;
}

function isPrime(num) {
  if (num < 2) {
    return false;
  }

  let i = 2;
  while (i < num) {
    if (num % i === 0) {
      return false;
    }
    i++;
  }
  return true;
}

function sumOfNPrimes(n) {
  let sum = 0;
  let countOfPrimes = 0;
  
  for (let index = 2; countOfPrimes < n; index++) {
    if (isPrime(i)) {
      sum += i;
      countOfPrimes++;
    }
  }

  return sum;
}