console.log('i am in the js file');


// HTTP.get("http://localhost:3000/api/recipes")

axios.get("http://localhost:3000/api/recipes").then(function(response) {
  console.log(response.data);
});
