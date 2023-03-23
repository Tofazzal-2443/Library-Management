import 'package:flutter/material.dart';

class AdminHomePage extends StatefulWidget {
  const AdminHomePage({Key? key}) : super(key: key);
  static const String routeName = '/adminhomepage';

  @override
  State<AdminHomePage> createState() => _AdminHomePageState();
}

class _AdminHomePageState extends State<AdminHomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Admin Home Page'),
        actions: [
          TextButton(
            onPressed: () {

            },
            child: Text(
              'Book Store',
              style: TextStyle(color: Colors.amber, fontSize: 25),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Card(
                elevation: 5,
                child: Text('Requested Book List',
                    style: Theme.of(context).textTheme.headline4),
              ),
            ),
            FutureBuilder<List>(

              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  final bookingList = snapshot.data;
                  return ListView.builder(
                    shrinkWrap: true,
                    primary: false,
                    itemCount: bookingList?.length,
                    itemBuilder: (context, index){
                      final booking = bookingList![index];
                      final now = DateTime.now();
                      final returnDate = DateTime.parse(booking.returnDate);
                      final daysRemaining = returnDate.difference(now);

                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Card(
                          shape: RoundedRectangleBorder(
                              side: BorderSide(color: Colors.blue)
                          ),
                          elevation: 5,
                          child: ListTile(
                            leading: Icon(Icons.bookmark_border),
                            title: Text("User Name: ${booking.name}"),
                            subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Booking ID: ${booking.bookingId}'),
                                Text('Phone Number: ${booking.phoneNumber}'),
                                Text('Book name: ${booking.bookName}'),
                                Text('Hire date: ${booking.hiringDate}'),
                                Text('Return date: ${booking.returnDate}'),
                                Text('Days remaining: ${daysRemaining.inDays} day'),

                              ],
                            ),

                          ),
                        ),
                      );
                    },
                  );
                }

                if (snapshot.hasError) {
                  return Text('failed to load data');
                }
                return CircularProgressIndicator();
              },
            ),
          ],
        ),
      ),
    );
  }
}
