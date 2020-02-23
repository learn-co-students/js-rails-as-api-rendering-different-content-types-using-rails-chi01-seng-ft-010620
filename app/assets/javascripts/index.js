let birdsData;

const fetchBirds = () => {
fetch('http://localhost:3000/birds/')
.then(resp => resp.json())
.then(data => {
   birdsData = data
   console.log(birdsData)
})
}

fetchBirds()
