import 'package:business_explorer/app/core/utils/common_functions.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Get distance', () {
    test("Get distance in KM 1", () async {
      double distance = getDistance(distanceInMeters: 1262.2789968123395);
      expect(distance, 1.26);
    });

    test("Get distance in KM 2", () async {
      double distance = getDistance(distanceInMeters: 1583.0802664491484);
      expect(distance, 1.58);
    });

    test("Get distance in KM 3", () async {
      double distance = getDistance(distanceInMeters: 4062.929570044286);
      expect(distance, 4.06);
    });

    test("Get distance in KM 4", () async {
      double distance = getDistance(distanceInMeters: 5202.248023208401);
      expect(distance, 5.2);
    });
  });
}
