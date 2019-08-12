const addClickFeature = () => {
  const characters = document.querySelectorAll(".card-category");
  const display = document.querySelector(".eight-container")
  characters.forEach((character) => {
    character.addEventListener("click", (event) =>{

      display.innerHTML = `<h1>THIS IS JS </h1>`;
    })
  })
}


export { addClickFeature }
