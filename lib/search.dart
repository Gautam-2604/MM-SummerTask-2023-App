import 'package:flutter/material.dart';
import 'package:mondaymorningfrontend/home.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:mondaymorningfrontend/home.dart';
class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  final TextEditingController _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Colors.white,
        title: Container(
        // Add padding around the search bar
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
    // Use a Material design search bar
    child: TextField(
    controller: _searchController,
    decoration: InputDecoration(
    hintText: 'Search....',

    // Add a clear button to the search bar
    suffixIcon: IconButton(
    icon: Icon(Icons.clear, color: Colors.black,),
    onPressed: () => _searchController.clear(),
    ),
    // Add a search icon or button to the search bar
    prefixIcon: IconButton(
    icon: Icon(Icons.search, color: Colors.black,),
    onPressed: () {
    // Perform the search here
    },
    ),
    // border: OutlineInputBorder(
    //   borderRadius: BorderRadius.circular(20.0),
      ),
    ),
    ),
    ),
    );
  }
}

