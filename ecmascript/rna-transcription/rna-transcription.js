class Transcriptor {
    toRna(strand) {
      return strand.split('').reduce((acc, nucleotide) => {
        switch (nucleotide) {
          case 'C':
            acc += 'G'
            break
          case 'G':
            acc += 'C'
            break
          case 'A':
            acc += 'U'
            break
          case 'T':
            acc += 'A'
            break
          default:
            throw new Error('Invalid input DNA.')
        }
        
        return acc
      }, '')
    }
}

export default Transcriptor