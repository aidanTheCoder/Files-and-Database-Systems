function requestJSON(filename, callback) {   
    var xobj = new XMLHttpRequest();
    xobj.overrideMimeType("application/json");
    xobj.open('GET', filename, true); // Replace 'my_data' with the path to your file
    xobj.onreadystatechange = function () {
          if (this.readyState == 4 && this.status == "200") {
            callback(xobj.responseText);
          }
    };
    xobj.send(null);  
 }
 
function loadJSON(string) {
	JSONobj = JSON.parse(string);
	populateSequence(order, JSONobj.motorsports_teams.length);
    populateSequence(map, JSONobj.motorsports_teams.length);
    picture = document.getElementById("picture");
    for (i = 0; i < 4; i++) {
      btn.push(document.getElementById("btn" + i));
      btn[i].addEventListener("click", check, false);
    }
    document.getElementById("next").addEventListener("click", goNext, false);
    document.getElementById("show").addEventListener("click", showAnswer, false);
    chosen = order.length;
    goNext();
}


	