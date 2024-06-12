String getTimeAndDistance({required double distanceInMeters}) {
  //double distanceInMeters = 6288.929570044286;
  double distanceInKilometers = distanceInMeters / 1000;
  double distance = double.parse(distanceInKilometers.toStringAsFixed(2));
  print("Distance in kilometers: $distance");

  double speed = 40.0; // Speed in kilometers per hour

  double timeInHours = 0;
  if (speed == 0) {
    timeInHours = double.infinity; // Handle division by zero
  }
  timeInHours = distance / speed;

  int hours = timeInHours.floor();
  int minutes = ((timeInHours - hours) * 60).round();

  String timeData = "";
  if (hours == 0) {
    print("Time taken: $minutes minutes");
    timeData = "$minutes mins  .  ";
  } else if (minutes == 0) {
    print("Time taken: $hours hours");
    timeData = "$hours hours  .  ";
  } else {
    print("Time taken: $hours hours and $minutes minutes");
    timeData = "$hours hours and $minutes mins  .  ";
  }

  timeData += "$distance km";

  print("Time taken: $timeData");
  return timeData;
}
