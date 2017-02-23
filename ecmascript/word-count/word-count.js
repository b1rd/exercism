class Words {
  count(string) {
    return string
      .toLowerCase()
      .trim()
      .split(/[\s]+/)
      .reduce((prev, curr) => 
        (prev[curr] = ++prev[curr] || 1, prev), 
        {})
  }
}

export default Words