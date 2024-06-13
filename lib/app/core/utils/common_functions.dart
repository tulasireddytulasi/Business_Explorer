import 'package:url_launcher/url_launcher.dart';

double getDistance({required double distanceInMeters}) {
  double distanceInKilometers = distanceInMeters / 1000;
  double distance = double.parse(distanceInKilometers.toStringAsFixed(2));
  return distance;
}

void openMap({required double latitude, required double longitude}) async {
  final String googleMapsUrl = 'https://www.google.com/maps/search/?api=1&query=$latitude,$longitude';
  final String appleMapsUrl = 'https://maps.apple.com/?q=$latitude,$longitude';

  if (await canLaunchUrl(Uri.parse(googleMapsUrl))) {
    await launchUrl(Uri.parse(googleMapsUrl),  mode: LaunchMode.inAppWebView);
  } else if (await canLaunchUrl(Uri.parse(appleMapsUrl))) {
    await launchUrl(Uri.parse(appleMapsUrl),  mode: LaunchMode.inAppWebView);
  } else {
    throw 'Could not launch map URL';
  }
}

Future<void> openExternalLink({required String link}) async {
  if (await canLaunchUrl(Uri.parse(link))) {
  await launchUrl(Uri.parse(link),  mode: LaunchMode.inAppWebView);
  } else if (await canLaunchUrl(Uri.parse(link))) {
  await launchUrl(Uri.parse(link),  mode: LaunchMode.inAppWebView);
  } else {
  throw 'Could not launch map URL';
  }
}
