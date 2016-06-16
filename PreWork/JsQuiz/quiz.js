var user ={
	points:0
}
var responses = []

function question1(){
	var name = prompt('What is your name?')
	user.name = name
	return question2();
}

question1();


function question2() {
	var secondQuestion = prompt('Is the earth round?')
		if(secondQuestion === 'yes'){
			secondQuestion = true
			responses.push('yes');
			user.points = user.points +1; 
		} else if (secondQuestion === 'no'){
				secondQuestion = false
				responses.push('no');
				user.points =user.points -1;
			} else {
				alert("Answer the question yes or no!")

			}

			if(secondQuestion === true){
				return question3();
			} else {
				return question2();
			}

}

function question3(){
	var thirdQuery = prompt('Who is the greatest guitarist of all time: Steve Vai, Eric Clapton, or Andres Segovia? ');
    switch (thirdQuery){

	}
	return question4();
}
question3;

		


function question4(){
	var quest4 = prompt('Do you think Justin Beiber should be exiled to a small, uninhabited desert island?')
	if(quest4 === 'yes'){
		quest4 = true
		responses.push('yes');
		user.points = user.points +1;

	} else if (quest4 === 'no'){
		quest4 = false
		responses.push('no');
		user.points = user.points -1;

		
		} else {
			alert("Your decision will affect the lameness of all mankind. ANSWER IT!!!")
		}
		if(quest4 === true){
			return showResults();
		}else {
			return question4();
		}

}



function showResults(){

	for( var i = 0; i < responses.length; i++){
		console.log(responses[i]);
	}
		console.log(user.points);
}