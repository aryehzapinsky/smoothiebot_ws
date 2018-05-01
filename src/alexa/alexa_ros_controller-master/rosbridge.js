'use strict';

var ROSLIB 		  = require('roslib');
var valid_phrases;

var ros = new ROSLIB.Ros({
    url : 'ws://localhost:9090'
});

ros.on('connection', function() {
    console.log('Connected to websocket server.');
});
 
ros.on('error', function(error) {
    console.log('Error connecting to websocket server: ', error);
});


// Creating publisher
var command_publisher = new ROSLIB.Topic({
    ros : ros,
    name : '/ExecuteOption',
    messageType : 'std_msgs/String'
});

var currently_selected_publisher = new ROSLIB.Topic({
    ros : ros,
    name : '/CurrentlySelectedOption',
    messageType : 'std_msgs/String'
});


module.exports = {
    returnValidPhrases: function() {
 	valid_phrases = ["apple", "banana"]; 
        return valid_phrases;
    },
    publishCommand: function(command){
        var command_to_publish = new ROSLIB.Message({
            data : command
        });
        command_publisher.publish(command_to_publish);
    }
};
// //implement function that will return array of current valid phrases
 function returnValidPhrases(){
     return valid_phrases;
 }

// // publishing command (called from lambda.js)
 function publishCommand(command){
     var command_to_publish = new ROSLIB.Message({
         data : command
     });
     command_publisher.publish(command_to_publish);
 }


