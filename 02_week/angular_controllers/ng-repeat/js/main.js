angular
	.module("ngRepeatExample", [])
  	.controller("exampleController", exampleController);





function exampleController(){
	console.dir(this);
    this.friends = [
    {name:'Blaise', age: 18, gender:'boy'},
    {name:'Tiffany', age: 24, gender:'girl'},
    {name:'Austin', age: 24, gender:'boy'},
    {name:'Glenn', age: 40, gender:'boy'},
    {name:'Austin', age: 22, gender:'boy'},
    {name:'Conrad', age: 25, gender:'boy'},
    {name:'Fancy', age: 23, gender:'girl'},
    ];
}