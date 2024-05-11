import 'package:caffeine/features/lastReseervationCard/presentation/widgets/last_reservation_card_design.dart';
import 'package:flutter/material.dart';

class LastReseervationCardPage extends StatefulWidget {
  const LastReseervationCardPage({super.key});

  @override
  createState() => _LastReseervationCardPage();
}

class _LastReseervationCardPage extends State<LastReseervationCardPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: LastReservationDesign(),
    );
  }
}
