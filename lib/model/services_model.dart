import 'package:sajilo_app/helper/constants.dart';

class Services {
  final String name;
  final String imageUrl;

  Services({
    required this.name,
    required this.imageUrl,
  });
}

final List<Services> services = [
  Services(name: 'Service 1', imageUrl: AppConstamts().serviceImg),
  Services(name: 'Service 2', imageUrl: AppConstamts().serviceImg),
  Services(name: 'Service 3', imageUrl: AppConstamts().serviceImg),
  Services(name: 'Service 4', imageUrl: AppConstamts().serviceImg),
  Services(name: 'Service 5', imageUrl: AppConstamts().serviceImg),
  Services(name: 'Service 1', imageUrl: AppConstamts().serviceImg),
  Services(name: 'Service 2', imageUrl: AppConstamts().serviceImg),
  Services(name: 'Service 3', imageUrl: AppConstamts().serviceImg),
  Services(name: 'Service 4', imageUrl: AppConstamts().serviceImg),
  Services(name: 'Service 5', imageUrl: AppConstamts().serviceImg),
];

class ServiceProvider {
  final String name;
  final String imageUrl;

  ServiceProvider({
    required this.name,
    required this.imageUrl,
  });
}

final List<ServiceProvider> serviceProvider = [
  ServiceProvider(name: "Ram", imageUrl: AppConstamts().spImg),
  ServiceProvider(name: "Shyam", imageUrl: AppConstamts().spImg),
  ServiceProvider(name: "Laxman", imageUrl: AppConstamts().spImg),
  ServiceProvider(name: "Luffy", imageUrl: AppConstamts().spImg),
  ServiceProvider(name: "Goku", imageUrl: AppConstamts().spImg),
  ServiceProvider(name: "Tara Ram", imageUrl: AppConstamts().spImg),
  ServiceProvider(name: "Khadka", imageUrl: AppConstamts().spImg),
  ServiceProvider(name: "Rabi", imageUrl: AppConstamts().spImg),
  ServiceProvider(name: "Laxman", imageUrl: AppConstamts().spImg),
  ServiceProvider(name: "Luffy", imageUrl: AppConstamts().spImg),
  ServiceProvider(name: "Goku", imageUrl: AppConstamts().spImg),
  ServiceProvider(name: "Tara Ram", imageUrl: AppConstamts().spImg),
  ServiceProvider(name: "Khadka", imageUrl: AppConstamts().spImg),
  ServiceProvider(name: "Rabi", imageUrl: AppConstamts().spImg),
];
