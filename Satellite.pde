class Satellite {

  String SatelliteID;


  Satellite(String SatelliteID) {

    this.SatelliteID = SatelliteID;
  }


  void tegnSatellit() {

    // loader json fil
    JSONObject json = loadJSONObject("https://www.n2yo.com/rest/v1/satellite/positions/" + SatelliteID + "/41.702/-76.014/0/2/&apiKey=538VGY-B452WZ-FHHHPQ-4KHA");

    println(SatelliteID);

    // loader json arrayet positions ind i variablen positions
    JSONArray positions = json.getJSONArray("positions");

    // henter satellit navn
    String satname = json.getJSONObject("info").getString("satname");

    // loader det første JSON objekt fra positions i variablen CurrentPos, og derefter det andet objekt for FuturePos
    JSONObject CurrentPos = positions.getJSONObject(0);

    // henter satellittens nuværende latitude
    Float currentLatitude = CurrentPos.getFloat("satlatitude");

    // henter satellittens nuværende latitude
    Float currentAltitude = CurrentPos.getFloat("sataltitude");

    // henter satellittens nuværende longitude
    Float currentLongitude = CurrentPos.getFloat("satlongitude");



    float theta = radians(currentLatitude) + PI/2;
    float phi = radians(currentLongitude) + PI;
    float x = r * sin(theta) + cos(phi);
    float y = -r * sin(theta) + sin(phi);
    float z = r * cos(theta);
    pushMatrix();  
    translate(x, y, z);
    box(10);
    text(satname, x, y, z);
    popMatrix();
  }
}
