import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  DetailPage({super.key, required this.getData});
  List getData;

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("${widget.getData[1]}")),
      body: ListView(
        children: [
          Image.asset("${widget.getData[0]}"),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.getData[3],
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    const Icon(Icons.star, color: Colors.amber),
                    const SizedBox(width: 4),
                    Text(widget.getData[4].toString()),
                  ],
                ),
                const SizedBox(height: 12),
                Text(widget.getData[5]),
                const SizedBox(height: 16),

                _InfoRow(title: 'Kuliner', value: widget.getData[6] as String),
                _InfoRow(title: 'Budaya', value: widget.getData[7] as String),
                _InfoRow(title: 'Bahasa', value: widget.getData[8] as String),
                _InfoRow(
                  title: 'Rumah Adat',
                  value: widget.getData[9] as String,
                ),
                _InfoRow(
                  title: 'Pakaian Adat',
                  value: widget.getData[10] as String,
                ),
                const SizedBox(height: 20),

                const SizedBox(height: 20),
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.blue.shade50,
                  ),
                  child: const Text(
                    'Informasi ini ditujukan untuk edukasi dan referensi wisata. Tidak ada fitur pemesanan.',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _InfoRow extends StatelessWidget {
  const _InfoRow({required this.title, required this.value});

  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 110,
            child: Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.w600),
            ),
          ),
          Expanded(child: Text(value)),
        ],
      ),
    );
  }
}
