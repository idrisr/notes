async function myFunction(): Promise<string> {
    return Promise.resolve("firebase")
}

async function myFunction2() {
    try {
        const rank = await getRank()
        return "firebase is #" + rank
    } 
    catch (err) {
        return "Error: " + err
    }

}

function getRank() {
    return Promise.reject("I don't know :-(")
}