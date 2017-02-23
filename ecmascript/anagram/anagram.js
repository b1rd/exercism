class Anagram {
    constructor(word) {
        this.word = word
    }

    matches(...list){
        let result = []
        
        const preprocess = str => {return str.toLowerCase().split('').sort().join('')}
        const matchedWord = preprocess(this.word)
        const matchWords = list => list.filter(word => {
            return matchedWord === preprocess(word) && this.word.toLowerCase() !== word.toLowerCase()
        })

        result = typeof list[0] === 'object' ? 
            matchWords(...list) : 
            matchWords(list)

        return result
    }
}

export default Anagram