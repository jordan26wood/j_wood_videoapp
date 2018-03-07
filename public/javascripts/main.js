(() => {
  //VAriables always declared at the top
  let getButtons = document.querySelectorAll('.getButton'),
      postButton = document.querySelector('.postButton'),
      deleteButton = document.querySelector('.deleteButton');

  function insertData() {
    let url = "api/" + this.id;

    fetch(url, {
      method : 'post'
      headers : {
        'accept' : 'application/json, text-plain, */*',
        'Content-type' : 'application/json'
      },
      body: JSON.stringify({
        model : "F56",
        modelName : "Mini Cooper F56",
        pricing : "22, 190",
        modelDetails : "lots and lots of text",
        imagePath : "F56.jpg"
      })
    }
  )
    .then((resp) => resp.json())
    .then((data) => {
      console.log(data);
    })
    .catch(function(error) {
      console.log(error);
    });
  }

  function deleteData() {
		let url = "api/" + this.id;

		fetch(url, { method: 'delete' }) // do our ajax call
	      .then((resp) => resp.json()) // convert the response to JSON (built-in method)
	      .then((data) => {
	      		console.log(data);
	      	}) // then do the process result function
	      .catch(function(error) {
	        console.log(error); // catch any errors and show them in the console
	    });
	}

  //event handling always goes at the bottom

  getButtons.forEach(button => button.addEventListener('click', fetchData));
  deleteButton.addEventListener('click', deleteData);
  deleteButton.addEventListener('click', insertData);
})();
