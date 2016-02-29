
// DOM Manipulation Challenge


// I worked on this challenge [by myself, with: ].


// Add your JavaScript calls to this page:

// Release 0:
document.getElementById("release-1").style.color = "red";



// Release 1:
var done = document.getElementById('release-0');
var class_name = document.createAttribute('class');
class_name.value = "done";
done.setAttributeNode(class_name);



// Release 2:

document.getElementById('release-1').style.color = "blue";
document.getElementById('release-1').style.display = "none";


// Release 3:

document.getElementsByTagName("h1")[0].innerHTML = "I completed release 2";


// Release 4:
var color = '#955251';
document.getElementById("release-3").style.backgroundColor = '#955251' ;


// Release 5:
var len = document.getElementsByClassName('release-4').length;
for (var i =0; i<len;i++){
document.getElementsByClassName('release-4')[i].style.fontSize = "2em";
};

var new_html = document.getElementById("hidden");
document.body.appendChild(new_html.content.cloneNode(true));


