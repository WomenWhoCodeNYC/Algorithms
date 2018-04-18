function series(n) {
  let total = 0;
  for (let i=1; i<=n; i++) {
    total += 1/(((i-1)*3)+1);
  }
  return total;
}

series(5)


//solved 11/29 @ WWC @ Betterment meetup
