"use strict";

var   Alexa           = require("alexa-sdk");
var   rosbridge       = require('./rosbridge.js'); //for communication with ROS

const APP_ID = 'amzn1.ask.skill.ea745f0f-e7ff-40f5-8de8-c9aae2a8c732'
const HELP_MESSAGE = 'The smoothie bot is expecting you to say the names of fruits it should add to the smoothie.';
const HELP_REPROMPT = 'What can I help you with?';
const STOP_MESSAGE = 'Goodbye!';

    

var handlers = {

	"LaunchRequest": function(){
	   const speechOutput = 'I am smoothiebot and I am here to make you a smoothie. Tell me a fruit you would like in your smoothie. I have an apple and a banana.';
           //this.handler.state = states.SEARCHMODE;
	   this.handler.response = speechOutput;
           this.emit(':ask', speechOutput);
	   this.emitWithState('MakeSmoothie');
	},
	"Unhandled": function(){
	this.emit(":ask", "Sorry I didnt understand that");
},
    "AMAZON.HelpIntent": function () {
        this.response.speak(HELP_MESSAGE).listen(HELP_REPROMPT);
        //this.response.speak(HELP_MESSAGE); //link to help text in YAML
        this.emit(':responseReady');
    },
    "AMAZON.CancelIntent": function () {
        this.response.speak(STOP_MESSAGE);
        this.emit(':responseReady');
    },

    'MakeSmoothie': function() {
        const fruitSlot = this.event.request.intent.slots.fruits; 
        var fruitName;
	console.log(this.event.request.intent);
        var validPhrases = rosbridge.returnValidPhrases();
	//var validPhrases = ["banana", "apple"];
        console.log("phrases: " + validPhrases);

        if(fruitSlot){
            fruitName = fruitSlot.value;

            console.log(fruitName);
            if(validPhrases.indexOf(fruitName) != -1){
                this.response.speak("I will now grasp this " + fruitName + "in front of me");
                console.log("valid fruit received: " + fruitName);
                rosbridge.publishCommand(fruitName.value);

            }
            else{
                this.response.speak("Apples or bananas only please");
            }
        }
        else{
            this.response.speak("No command received");
        }

        //const command = myCommandList[commandName]

        this.emit(':responseReady');
    }


};

//what port does this use...3000?
exports.handler = function (event, context, callback) { //for Lambda AWS
    var alexa = Alexa.handler(event, context);
    alexa.appId = APP_ID;
    alexa.registerHandlers(handlers);
    alexa.execute();

};
