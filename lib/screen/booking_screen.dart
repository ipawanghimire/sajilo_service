import 'package:flutter/material.dart';
import 'package:sajilo_app/helper/constants.dart';

class BookingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          bottom: TabBar(
            tabs: [
              Tab(text: 'Bookings'),
              Tab(text: 'History'),
            ],
            indicatorColor:
                AppConstamts().primaryColor, // Selected tab indicator color
            unselectedLabelColor:
                AppConstamts().greyColor, // Unselected tab text color
          ),
        ),
        body: TabBarView(
          children: [
            BookingsTab(),
            HistoryTab(),
          ],
        ),
      ),
    );
  }
}

class BookingsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('No Bookings Yet '),
    );
  }
}

class HistoryTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('No History Yet'),
    );
  }
}
