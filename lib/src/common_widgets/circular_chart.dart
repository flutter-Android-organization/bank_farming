import 'package:flutter/material.dart';
import '../constant/color_constant.dart';

import 'package:flutter/material.dart';

class AnimatedCircularChart extends StatefulWidget {
  const AnimatedCircularChart({super.key, this.size = 250});
  final double size;

  @override
  State<AnimatedCircularChart> createState() => _AnimatedCircularChartState();
}

class _AnimatedCircularChartState extends State<AnimatedCircularChart>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late List<Animation<double>> _animations;

  final List<double> targetValues = [0.2, 0.3, 0.5, 0.7];

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    _animations = targetValues.map((value) {
      return Tween<double>(begin: 0, end: value).animate(
        CurvedAnimation(parent: _controller, curve: Curves.easeOut),
      );
    }).toList();

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Widget _buildAnimatedLayer(Animation<double> animation, Color color) {
    return AnimatedBuilder(
      animation: animation,
      builder: (context, child) {
        return SizedBox(
          width: widget.size + 50,
          height: widget.size + 50,
          child: CircularProgressIndicator(
            value: animation.value,
            strokeWidth: 50.0,
            valueColor: AlwaysStoppedAnimation<Color>(color),
            backgroundColor: Colors.transparent,
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Stack(
        alignment: Alignment.center,
        children: [
          // Background layer
          SizedBox(
            width: widget.size + 50,
            height: widget.size + 50,
            child: CircularProgressIndicator(
              value: 1.0,
              strokeWidth: 50.0,
              backgroundColor: Colors.white,
              valueColor: const AlwaysStoppedAnimation<Color>(Colors.white),
            ),
          ),

          _buildAnimatedLayer(_animations[3], Colors.amber),
          _buildAnimatedLayer(_animations[2], Colors.purple),
          _buildAnimatedLayer(_animations[1], Colors.teal),
          _buildAnimatedLayer(_animations[0], Colors.deepOrange),

          // You can add a centered icon or button here
          // Icon(Icons.bolt, size: 80, color: Colors.black),
        ],
      ),
    );
  }
}


class CircularChart extends StatelessWidget {
  const CircularChart({super.key, this.size = 250});

  final double size;

  @override
  Widget build(BuildContext context) {

    return Container(
      padding: EdgeInsets.all(10),
      child: Stack(
        alignment: Alignment.center,
        children: [
          // Circular progress indicator
          SizedBox(
            width: size + 50, //MediaQuery.of(context).size.width,
            height: size + 50,
            child:  CircularProgressIndicator(
                value: 0.0,
                strokeWidth: 50.0,
                backgroundColor: Colors.white,//withAlpha(90)
            ),
          ),

          SizedBox(
            width: size + 50,
            height: size + 50,
            child:  CircularProgressIndicator(
                value: 0.7,
                valueColor: const AlwaysStoppedAnimation<Color>(Colors.amber),
                strokeWidth: 50.0,
                color: Colors.cyan,
                backgroundColor: Colors.transparent
            ),
          ),

          SizedBox(
            width: size + 50,
            height: size + 50,
            child:  CircularProgressIndicator(
                value: 0.5,
                valueColor: const AlwaysStoppedAnimation<Color>(Colors.purple),
                strokeWidth: 50.0,
                color: Colors.cyan,
                backgroundColor: Colors.transparent
            ),
          ),

          SizedBox(
            width: size + 50,
            height: size + 50,
            child:  CircularProgressIndicator(
                value: 0.3,
                valueColor: const AlwaysStoppedAnimation<Color>(colThree),
                strokeWidth: 50.0,
                color: Colors.cyan,
                backgroundColor: Colors.transparent
            ),
          ),

          SizedBox(
            width: size + 50,
            height: size + 50,
            child:  CircularProgressIndicator(
                value: 0.2,
                valueColor: const AlwaysStoppedAnimation<Color>(colOne),
                strokeWidth: 50.0,
                color: Colors.cyan,
                backgroundColor: Colors.transparent
            ),
          ),

          // Centered icon
          //IconBtnOne(onIconPressed: () {}, iconSize: 100, fixed: 120,),
        ],
      ),
    );
  }
}
