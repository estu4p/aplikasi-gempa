import 'package:flutter/material.dart';
import 'package:gempa/components/data_list.dart';
import 'package:gempa/components/definisi_gempa.dart';
import 'package:gempa/components/searchbar.dart';
import 'package:gempa/data/data.dart';
import 'package:gempa/pages/detail_page.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  List filteredData = DataGempa;
  bool isSearching = false;

  void _searchData(String query) {
    setState(() {
      filteredData = DataGempa.where(
              (data) => data.title.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  void _handleFocusChanged(bool focused) {
    setState(() {
      isSearching = focused;

      if (!focused) {
        filteredData = DataGempa;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: const Text(
          'Home Page',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(18.0, 10.0, 0, 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MySearchBar(
                  onChanged: _searchData,
                  onFocusChanged: _handleFocusChanged,
                ),
                if (!isSearching) ...[
                  DefinisiGempa(data: filteredData[0]),
                  const SizedBox(height: 10.0),
                  const Text(
                    'List Materi',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10.0),
                ],
                ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: isSearching
                      ? filteredData.length
                      : filteredData.length - 1,
                  itemBuilder: (context, index) => DataList(
                    data: isSearching
                        ? filteredData[index]
                        : filteredData[index + 1],
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailPage(
                            data: isSearching
                                ? filteredData[index]
                                : filteredData[index + 1],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
