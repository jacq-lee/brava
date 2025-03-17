import 'package:flutter/material.dart';
import 'package:brava_app/style/colors.dart';

class Limits extends StatefulWidget {
  @override
  _LimitsState createState() => _LimitsState();
}

class _LimitsState extends State<Limits> {
  List<Widget> limitCards = [];
  List<Widget> previousLimitCards = [];
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
  }

  void addNewLimitCard() {
    setState(() {
      limitCards.add(
        TrainingLimitCard(
          title: "Training Period",
          onPercentage1Changed: (value) {},
          onPercentage2Changed: (value) {},
          onArchive: (card) => archiveCard(card),
        ),
      );
    });

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_scrollController.hasClients) {
        _scrollController.animateTo(
          _scrollController.position.maxScrollExtent,
          duration: Duration(milliseconds: 300),
          curve: Curves.easeOut,
        );
      }
    });
  }

  void archiveCard(Widget card) {
    setState(() {
      limitCards.remove(card);
      previousLimitCards.add(card);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: MediaQuery.of(context).size.height,
      padding: EdgeInsets.symmetric(horizontal: 31),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 50),
          Text(
            'Training Load Limits',
            style: TextStyle(
              color: Color(0xFF131214),
              fontSize: 16,
              fontFamily: 'Figtree',
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 10),
          DecoratedBox(
            decoration: BoxDecoration(
              border: Border.all(width: 1, color: BravaColors.bravaPink),
            ),
            child: SizedBox(width: double.infinity, height: 1),
          ),
          SizedBox(height: 10),
          Text(
            'Current Limit',
            style: TextStyle(
              color: Color(0xFF131214),
              fontSize: 16,
              fontFamily: 'Figtree',
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: 10),
          Container(
            alignment: Alignment.center,
            child: ElevatedButton(
              onPressed: addNewLimitCard,
              child: Text("Add Training Limit"),
            ),
          ),
          SizedBox(
            height: 300,
            child: ListView(
              controller: _scrollController,
              children: limitCards,
            ),
          ),
          SizedBox(height: 20),
          Text(
            'Previous Limits',
            style: TextStyle(
              color: Color(0xFF131214),
              fontSize: 16,
              fontFamily: 'Figtree',
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(
            height: 300,
            child: ListView(
              children: previousLimitCards,
            ),
          ),
        ],
      ),
    );
  }
}

class TrainingLimitCard extends StatelessWidget {
  final String title;
  final Function(String) onPercentage1Changed;
  final Function(String) onPercentage2Changed;
  final Function(Widget) onArchive;

  const TrainingLimitCard({
    super.key,
    required this.title,
    required this.onPercentage1Changed,
    required this.onPercentage2Changed,
    required this.onArchive,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 12),
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: BravaColors.lightestPink,
        borderRadius: BorderRadius.circular(9),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 150,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: title,
                    hintStyle: TextStyle(
                      color: BravaColors.stagePink,
                      fontSize: 12,
                      fontFamily: 'Figtree',
                      fontWeight: FontWeight.w700,
                    ),
                    border: InputBorder.none,
                  ),
                  style: TextStyle(
                    color: BravaColors.stagePink,
                    fontSize: 12,
                    fontFamily: 'Figtree',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Row(
                children: [
                  SizedBox(width: 10),
                  SizedBox(
                    width: 40,
                    child: PercentageSelector(
                      onValueChanged: onPercentage1Changed,
                    ),
                  ),
                  SizedBox(width: 20),
                  SizedBox(
                    width: 80,
                    child: PercentageSelector(
                      onValueChanged: onPercentage2Changed,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(width: 15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    'Notes',
                    style: TextStyle(
                      color: BravaColors.stagePink,
                      fontSize: 12,
                      fontFamily: 'Figtree',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(width: 55),
                  SizedBox(
                    child: IconButton(
                      icon: Icon(Icons.archive_outlined, color: BravaColors.stagePink),
                      onPressed: () => onArchive(this),
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 139,
                child: SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  child: TextField(
                    maxLines: 3,
                    keyboardType: TextInputType.multiline,
                    decoration: InputDecoration(
                      hintText: 'Enter your training diary here.',
                      hintStyle: TextStyle(
                        color: Color(0xFF390A17),
                        fontSize: 12,
                        fontFamily: 'Figtree',
                        fontWeight: FontWeight.w400,
                      ),
                      border: InputBorder.none,
                    ),
                    style: TextStyle(
                      color: BravaColors.stagePink,
                      fontSize: 12,
                      fontFamily: 'Figtree',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class PercentageSelector extends StatefulWidget {
  final Function(String) onValueChanged;

  PercentageSelector({required this.onValueChanged});

  @override
  _PercentageSelectorState createState() => _PercentageSelectorState();
}

class _PercentageSelectorState extends State<PercentageSelector> {
  int selectedIndex = 0;
  final List<String> percentages = ['-', '0%','10%','20%','30%','40%','50%','60%', '70%', '80%', '90%', '100%','110%','120%','130%'];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      child: ListWheelScrollView.useDelegate(
        controller: FixedExtentScrollController(initialItem: selectedIndex),
        itemExtent: 28,
        physics: FixedExtentScrollPhysics(),
        onSelectedItemChanged: (index) {
          setState(() {
            selectedIndex = index;
          });
          widget.onValueChanged(percentages[index]);
        },
        childDelegate: ListWheelChildBuilderDelegate(
          childCount: percentages.length,
          builder: (context, index) {
            return Align(
              alignment: Alignment.centerLeft,
              child: Text(
                percentages[index],
                style: TextStyle(
                  color: BravaColors.stagePink,
                  fontSize: 16,
                  fontFamily: 'Figtree',
                  fontWeight: FontWeight.w700,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}