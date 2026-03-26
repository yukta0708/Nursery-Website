
Webcam.set({
    width:350,
    height:300,
    image_format : 'png',
    png_quality:90
  });

  camera = document.getElementById("camera");

Webcam.attach( '#camera' );

      
function take_snapshot()
{
    Webcam.snap(function(data_uri) {
        document.getElementById("result").innerHTML = '<img id="captured_image" src="img/"/>';
    });
}

  console.log('ml5 version:', ml5.version);


//classifier is the variable that holds the model which we had imported in the starting of ml5.js coding in the previous class.
classifier = ml5.imageClassifier('https://teachablemachine.withgoogle.com/models/OfSPutgRI/model.json',modelLoaded);

  function modelLoaded() {
    console.log('Model Loaded!');
  }
      
  function check()
  {
      //Then we get the captured image, and store it inside a variable.
    img = document.getElementById('captured_image');
      
      //Classify is a predefined function of ml5.js that is used to compare the captured image with the model, and get the results
    classifier.classify(img, gotResult);
      
      //gotResult function will hold the result of the comparison
  }


function gotResult(error, results) {
  if (error) {
    console.error(error);
  } else {
    console.log(results);
      //object name is picked up from the array
    document.getElementById("result_person_name").innerHTML = results[0].label;
    document.getElementById("result_object_accuracy").innerHTML = results[0].confidence.toFixed(3);
  }
}
