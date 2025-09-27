import 'package:flutter/material.dart';
import 'package:joe_stumble/feature/widget/home/custom_appbar2.dart';
import 'package:joe_stumble/feature/widget/home/custom_nav_bar.dart';

class SupportScreen extends StatelessWidget {
  const SupportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar2(
        title: "Choose the support you need",onBack: () {
        Navigator.pop(context);
      },
        actionIcon: "assets/images/avatar/menu.png",
        onAction: () {},
      ),
      bottomNavigationBar: const CustomNavBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image(
                  image: AssetImage('assets/images/community/record.png'),
                  width: 150, // Adjust based on your image size
                  height: 50, // Adjust based on your image size
                  fit: BoxFit.contain,
                ),
              ],
            ),Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("Record a grounding\n    Message",style: TextStyle(color: Colors.black),),
                ],
              ),
            ),


            const Center(
              child: Image(
                image: AssetImage('assets/images/community/support.png'),
                width: 200,
                height: 200,
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(height: 20), // Adjusted spacing to match screenshot

            const SizedBox(height: 40), // Adjusted spacing to match screenshot
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                "Support Modes",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _SupportModeButton(
                    icon: Icons.warning_amber_rounded,
                    label: "Gentle",
                    iconColor: Colors.yellow[700]!,
                  ),
                  _SupportModeButton(
                    icon: Icons.warning_amber_rounded,
                    label: "Critical",
                    iconColor: Colors.orange,
                  ),
                  _SupportModeButton(
                    icon: Icons.warning_amber_rounded,
                    label: "Urgent",
                    iconColor: Colors.deepOrangeAccent,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                "Additional Tools",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _AdditionalToolButton(
                    icon: Icons.lock,
                    label: "Set up PIN Lock",
                  ),
                  _AdditionalToolButton(
                    icon: Icons.block,
                    label: "Ex Block",
                  ),
                ],
              ),
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}

/// ✅ Support Mode Button Widget
class _SupportModeButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color iconColor;

  const _SupportModeButton({
    required this.icon,
    required this.label,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 100,
          height: 70,
          decoration: BoxDecoration(
            color: const Color.fromRGBO(255, 248, 239, 1),

              borderRadius: BorderRadius.circular(10),
          ),
          child: Icon(
            icon,
            size: 40,
            color: iconColor,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          label,
          style: const TextStyle(
            fontSize: 14,
            color: Colors.blueGrey,
          ),
        ),
      ],
    );
  }
}

/// ✅ Additional Tool Button Widget
class _AdditionalToolButton extends StatelessWidget {
  final IconData icon;
  final String label;

  const _AdditionalToolButton({
    required this.icon,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(
        minWidth: 100,
        maxWidth: 180, // ✅ prevents overflow on large texts
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Icon(
            icon,
            size: 24,
            color: Colors.black,
          ),
          const SizedBox(width: 8),
          Expanded( // ✅ lets text wrap instead of overflow
            child: Text(
              label,
              maxLines: 1,
              overflow: TextOverflow.ellipsis, // ✅ adds "..."
              style: const TextStyle(
                fontSize: 14,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
