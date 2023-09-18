import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class TransactionPage extends StatefulWidget {
  const TransactionPage({super.key});

  @override
  State<TransactionPage> createState() => _TransactionPageState();
}

class _TransactionPageState extends State<TransactionPage> {
  bool isExpens = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tambah Transaksi"),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Row(
                children: [
                  Switch(
                    value: isExpens,
                    onChanged: (bool value) {
                      setState(() {
                        isExpens = value;
                      });
                    },
                    inactiveTrackColor: Colors.green[200],
                    inactiveThumbColor: Colors.green,
                    activeColor: Colors.red,
                  ),
                  Text(
                    isExpens ? 'Pengeluaran' : 'Pemasukan',
                    style: GoogleFonts.montserrat(fontSize: 14),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      border: UnderlineInputBorder(), labelText: "Jumlah"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
