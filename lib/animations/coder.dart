import 'dart:async';
import 'dart:ui';
import 'package:flutter/material.dart';

class CoderAnimation extends StatefulWidget {
  const CoderAnimation({super.key});

  @override
  State<CoderAnimation> createState() => _CoderAnimationState();
}

class _CoderAnimationState extends State<CoderAnimation>
    with TickerProviderStateMixin {
  AnimationController? laptopBottomController;
  AnimationController? laptopBodyController;
  AnimationController? coderCapController;
  AnimationController? coderCapBottomController;
  AnimationController? coderFaceController;
  AnimationController? leftBodyController;
  AnimationController? rightBodyController;
  AnimationController? leftShirtCollorController;
  AnimationController? rightShirtCollorController;
  AnimationController? leftAppleController;
  AnimationController? rightAppleController;
  AnimationController? bottomAppleController;
  AnimationController? bottomToUpAppleController;
  AnimationController? sharpAppleController;
  AnimationController? branchAppleController;
  AnimationController? leftEyeController;
  AnimationController? rightEyeController;
  AnimationController? smileController;

  Animation<double>? laptopBottomAnimation;
  Animation<double>? laptopBodyAnimation;
  Animation<double>? coderCapAnimation;
  Animation<double>? coderCapBottomAnimation;
  Animation<double>? coderFaceAnimation;
  Animation<double>? leftBodyAnimation;
  Animation<double>? rightBodyAnimation;
  Animation<double>? leftShirtCollorAnimation;
  Animation<double>? rightShirtCollorAnimation;
  Animation<double>? leftAppleAnimation;
  Animation<double>? rightAppleAnimation;
  Animation<double>? bottomAppleAnimation;
  Animation<double>? bottomToUpAppleAnimation;
  Animation<double>? sharpAppleAnimation;
  Animation<double>? branchAppleAnimation;
  Animation<double>? leftEyeAnimation;
  Animation<double>? rightEyeAnimation;
  Animation<double>? smileAnimation;

  @override
  void initState() {
    super.initState();
    coderFaceController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    laptopBottomController =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
    laptopBodyController =
        AnimationController(vsync: this, duration: const Duration(seconds: 3));
    coderCapController =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
    coderCapBottomController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));

    leftBodyController =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
    rightBodyController =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
    leftShirtCollorController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    rightShirtCollorController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));

    leftAppleController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    rightAppleController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    bottomAppleController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));

    bottomToUpAppleController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    sharpAppleController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));

    branchAppleController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));

    leftEyeController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 500));
    rightEyeController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 500));

    smileController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));

    //animate
    laptopBottomAnimation =
        Tween<double>(begin: 0.0, end: 1.0).animate(laptopBottomController!);
    Timer(const Duration(seconds: 1), () {
      laptopBottomController!.forward();
    });
    laptopBottomController!.addListener(
      () {
        if (laptopBottomAnimation!.value == 1) {
          laptopBodyController!.forward();
          laptopBodyAnimation = Tween<double>(begin: 0.0, end: 1.0)
              .animate(laptopBodyController!);
        }
        setState(() {});
      },
    );
    laptopBodyController!.addListener(
      () {
        if (laptopBodyAnimation!.value == 1) {
          coderCapController!.forward();
          coderCapAnimation =
              Tween<double>(begin: 0.0, end: 1.0).animate(coderCapController!);
        }
        setState(() {});
      },
    );
    coderCapController!.addListener(
      () {
        if (coderCapAnimation!.value == 1) {
          coderCapBottomController!.forward();
          coderCapBottomAnimation = Tween<double>(begin: 0.0, end: 1.0)
              .animate(coderCapBottomController!);
        }
        setState(() {});
      },
    );
    coderCapBottomController!.addListener(() {
      if (coderCapBottomAnimation!.value == 1) {
        coderFaceController!.forward();
        coderFaceAnimation =
            Tween<double>(begin: 0.0, end: 1.0).animate(coderFaceController!);
      }
      setState(() {});
    });
    coderFaceController!.addListener(() {
      if (coderFaceAnimation!.value == 1) {
        leftBodyController!.forward();
        leftBodyAnimation =
            Tween<double>(begin: 0.0, end: 1.0).animate(leftBodyController!);
      }
      setState(() {});
    });
    leftBodyController!.addListener(() {
      if (leftBodyAnimation!.value == 1) {
        rightBodyController!.forward();
        rightBodyAnimation =
            Tween<double>(begin: 0.0, end: 1.0).animate(rightBodyController!);
      }
      setState(() {});
    });
    rightBodyController!.addListener(() {
      if (rightBodyAnimation!.value == 1) {
        leftShirtCollorController!.forward();
        leftShirtCollorAnimation = Tween<double>(begin: 0.0, end: 1.0)
            .animate(leftShirtCollorController!);
      }
      setState(() {});
    });
    leftShirtCollorController!.addListener(() {
      if (leftShirtCollorAnimation!.value == 1) {
        rightShirtCollorController!.forward();
        rightShirtCollorAnimation = Tween<double>(begin: 0.0, end: 1.0)
            .animate(rightShirtCollorController!);
      }
      setState(() {});
    });
    rightShirtCollorController!.addListener(() {
      if (rightShirtCollorAnimation!.value == 1) {
        leftAppleController!.forward();
        leftAppleAnimation =
            Tween<double>(begin: 0.0, end: 1.0).animate(leftAppleController!);
      }
      setState(() {});
    });
    leftAppleController!.addListener(() {
      if (leftAppleAnimation!.value == 1) {
        rightAppleController!.forward();
        rightAppleAnimation =
            Tween<double>(begin: 0.0, end: 1.0).animate(rightAppleController!);
      }
      setState(() {});
    });
    rightAppleController!.addListener(() {
      if (rightAppleAnimation!.value == 1) {
        bottomAppleController!.forward();
        bottomAppleAnimation =
            Tween<double>(begin: 0.0, end: 1.0).animate(bottomAppleController!);
      }
      setState(() {});
    });
    bottomAppleController!.addListener(() {
      if (bottomAppleAnimation!.value == 1) {
        bottomToUpAppleController!.forward();
        bottomToUpAppleAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
          bottomToUpAppleController!,
        );
      }
      setState(() {});
    });
    bottomToUpAppleController!.addListener(() {
      if (bottomToUpAppleAnimation!.value == 1) {
        sharpAppleController!.forward();
        sharpAppleAnimation =
            Tween<double>(begin: 0.0, end: 1.0).animate(sharpAppleController!);
      }
      setState(() {});
    });
    sharpAppleController!.addListener(() {
      if (sharpAppleAnimation!.value == 1) {
        branchAppleController!.forward();
        branchAppleAnimation =
            Tween<double>(begin: 0.0, end: 1.0).animate(branchAppleController!);
      }
      setState(() {});
    });
    branchAppleController!.addListener(() {
      if (branchAppleAnimation!.value == 1) {
        rightEyeController!.forward();
        rightEyeAnimation =
            Tween<double>(begin: 0.0, end: 1.0).animate(rightEyeController!);
        leftEyeController!.forward();
        leftEyeAnimation =
            Tween<double>(begin: 0.0, end: 1.0).animate(leftEyeController!);
      }
      setState(() {});
    });
    rightAppleController!.addListener(() {
      if (rightAppleAnimation!.value == 1) {
        smileController!.forward();
        smileAnimation =
            Tween<double>(begin: 0.0, end: 1.0).animate(smileController!);
      }
      setState(() {});
    });

    leftEyeController!.addListener(() {
      if (leftEyeAnimation!.value == 1) {
        rightEyeController!.forward();
        rightEyeAnimation =
            Tween<double>(begin: 0.0, end: 1.0).animate(rightEyeController!);
      }
      setState(() {});
    });
  }

  @override
  void dispose() {
    leftAppleController?.dispose();
    laptopBottomController?.dispose();
    laptopBodyController?.dispose();
    coderCapController?.dispose();
    coderCapBottomController?.dispose();
    coderFaceController?.dispose();
    leftBodyController?.dispose();
    rightBodyController?.dispose();
    leftShirtCollorController?.dispose();
    rightShirtCollorController?.dispose();
    leftAppleController?.dispose();
    rightAppleController?.dispose();
    bottomAppleController?.dispose();
    bottomToUpAppleController?.dispose();
    sharpAppleController?.dispose();
    branchAppleController?.dispose();
    leftEyeController?.dispose();
    rightEyeController?.dispose();
    smileController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      body: CustomPaint(
        size: Size.infinite,
        painter: CoderPainter(
          laptopBottomProgress: laptopBottomAnimation?.value ?? 0,
          laptopBodyProgress: laptopBodyAnimation?.value ?? 0,
          coderCapProgress: coderCapAnimation?.value ?? 0,
          coderCapBottomProgress: coderCapBottomAnimation?.value ?? 0,
          coderFaceProgress: coderFaceAnimation?.value ?? 0,
          leftBodyProgress: leftBodyAnimation?.value ?? 0,
          rightBodyProgress: rightBodyAnimation?.value ?? 0,
          leftShirtCollorProgress: leftShirtCollorAnimation?.value ?? 0,
          rightShirtCollorProgress: rightShirtCollorAnimation?.value ?? 0,
          leftAppleProgress: leftAppleAnimation?.value ?? 0,
          rightAppleProgress: rightAppleAnimation?.value ?? 0,
          bottomAppleProgress: bottomAppleAnimation?.value ?? 0,
          bottomToUpAppleProgress: bottomToUpAppleAnimation?.value ?? 0,
          sharpAppleProgress: sharpAppleAnimation?.value ?? 0,
          branchAppleProgress: branchAppleAnimation?.value ?? 0,
          leftEyeProgress: leftEyeAnimation?.value ?? 0,
          rightEyeProgress: rightEyeAnimation?.value ?? 0,
          smileProgress: smileAnimation?.value ?? 0,
        ),
      ),
    );
  }
}

class CoderPainter extends CustomPainter {
  CoderPainter({
    required this.laptopBottomProgress,
    required this.laptopBodyProgress,
    required this.coderCapProgress,
    required this.coderCapBottomProgress,
    required this.coderFaceProgress,
    required this.leftBodyProgress,
    required this.rightBodyProgress,
    required this.leftShirtCollorProgress,
    required this.rightShirtCollorProgress,
    required this.leftAppleProgress,
    required this.rightAppleProgress,
    required this.bottomAppleProgress,
    required this.bottomToUpAppleProgress,
    required this.sharpAppleProgress,
    required this.branchAppleProgress,
    required this.leftEyeProgress,
    required this.rightEyeProgress,
    required this.smileProgress,
  });

  final double? laptopBottomProgress;
  final double? laptopBodyProgress;
  final double? coderCapProgress;
  final double? coderCapBottomProgress;
  final double? coderFaceProgress;
  final double? leftBodyProgress;
  final double? rightBodyProgress;
  final double? leftShirtCollorProgress;
  final double? rightShirtCollorProgress;
  final double? leftAppleProgress;
  final double? rightAppleProgress;
  final double? bottomAppleProgress;
  final double? bottomToUpAppleProgress;
  final double? sharpAppleProgress;
  final double? branchAppleProgress;
  final double? leftEyeProgress;
  final double? rightEyeProgress;
  final double? smileProgress;

  @override
  void paint(Canvas canvas, Size size) {
    final coderCanvasPaint = Paint()
      ..color = rightEyeProgress == 1 ? Colors.white : Colors.grey
      ..style = PaintingStyle.stroke
      ..strokeWidth = 5;

    final appleCanvasPaint = Paint()
      ..color = rightEyeProgress == 1 ? Colors.red : Colors.grey
      ..style = PaintingStyle.stroke
      ..strokeWidth = 5;

    final laptopBodyCanvasPaint = Paint()
      ..color = rightEyeProgress == 1 ? Colors.white : Colors.grey
      ..style = PaintingStyle.fill
      ..strokeWidth = 5;

    final laptopBottomPath = Path()
      ..addRRect(
        RRect.fromRectAndRadius(
          Rect.fromLTWH(
            size.width / 5,
            size.height / 1.52,
            size.width / 1.6,
            size.height / 80,
          ),
          const Radius.circular(8),
        ),
      );
    animateCoderPath(
        laptopBottomPath, laptopBodyCanvasPaint, canvas, laptopBottomProgress!);

    final laptopBodyPath = Path()
      ..addRRect(
        RRect.fromRectAndRadius(
          Rect.fromLTWH(
            size.width / 5,
            size.height / 2.2,
            size.width / 1.6,
            size.height / 5,
          ),
          const Radius.elliptical(20, 20),
        ),
      );
    animateCoderPath(
        laptopBodyPath, coderCanvasPaint, canvas, laptopBodyProgress!);

    final coderCapPath = Path()
      ..moveTo(size.width / 3, size.height / 3.5)
      ..quadraticBezierTo(
        size.width / 2,
        size.height / 12,
        size.width / 1.5,
        size.height / 3.5,
      );
    animateCoderPath(coderCapPath, coderCanvasPaint, canvas, coderCapProgress!);

    final coderCapBottomPath = Path()
      ..moveTo(size.width / 3, size.height / 3.5)
      ..quadraticBezierTo(
        size.width / 2,
        size.height / 4,
        size.width / 1.5,
        size.height / 3.5,
      );
    animateCoderPath(
        coderCapBottomPath, coderCanvasPaint, canvas, coderCapBottomProgress!);

    final coderFacePath = Path()
      ..moveTo(size.width / 3, size.height / 3.5)
      ..quadraticBezierTo(
        size.width / 2,
        size.height / 2.4,
        size.width / 1.5,
        size.height / 3.5,
      );
    animateCoderPath(
        coderFacePath, coderCanvasPaint, canvas, coderFaceProgress!);

    final leftBodyPath = Path()
      ..moveTo(size.width / 2.5, size.height / 3.1)
      ..cubicTo(
        size.width / 7,
        size.height / 2.9,
        size.width / 10,
        size.height / 2.5,
        size.width / 5,
        size.height / 1.6,
      );
    animateCoderPath(leftBodyPath, coderCanvasPaint, canvas, leftBodyProgress!);

    final rightBodyPath = Path()
      ..moveTo(size.width / 1.6, size.height / 3.1)
      ..cubicTo(
        size.width / 1.1,
        size.height / 2.9,
        size.width / 1.1,
        size.height / 2.5,
        size.width / 1.2,
        size.height / 1.6,
      );
    animateCoderPath(
        rightBodyPath, coderCanvasPaint, canvas, rightBodyProgress!);

    final leftShirtCollor = Path()
      ..moveTo(size.width / 2.5, size.height / 3.1)
      ..lineTo(size.width / 2.5, size.height / 2.6);
    animateCoderPath(
        leftShirtCollor, coderCanvasPaint, canvas, leftShirtCollorProgress!);

    final rightShirtCollor = Path()
      ..moveTo(size.width / 1.62, size.height / 3.1)
      ..lineTo(size.width / 1.62, size.height / 2.6);
    animateCoderPath(
        rightShirtCollor, coderCanvasPaint, canvas, rightShirtCollorProgress!);

    final leftApplePath = Path()
      ..moveTo(size.width / 2, size.height / 1.82)
      ..cubicTo(
        size.width / 2.2,
        size.height / 1.87,
        size.width / 2.8,
        size.height / 1.8,
        size.width / 2.2,
        size.height / 1.66,
      );
    animateCoderPath(
        leftApplePath, appleCanvasPaint, canvas, leftAppleProgress!);

    final rightApplePath = Path()
      ..moveTo(size.width / 2, size.height / 1.82)
      ..cubicTo(
        size.width / 1.8,
        size.height / 1.86,
        size.width / 1.7,
        size.height / 1.82,
        size.width / 1.74,
        size.height / 1.81,
      );
    animateCoderPath(
        rightApplePath, appleCanvasPaint, canvas, rightAppleProgress!);

    final bottomApplePath = Path()
      ..moveTo(
        size.width / 2.2,
        size.height / 1.66,
      )
      ..quadraticBezierTo(
        size.width / 2,
        size.height / 1.7,
        size.width / 1.87,
        size.height / 1.66,
      );
    animateCoderPath(
        bottomApplePath, appleCanvasPaint, canvas, bottomAppleProgress!);

    final bottomToUpApplePath = Path()
      ..moveTo(
        size.width / 1.87,
        size.height / 1.66,
      )
      ..quadraticBezierTo(
        size.width / 1.8,
        size.height / 1.65,
        size.width / 1.7,
        size.height / 1.7,
      );
    animateCoderPath(bottomToUpApplePath, appleCanvasPaint, canvas,
        bottomToUpAppleProgress!);

    final sharpApplePath = Path()
      ..moveTo(
        size.width / 1.7,
        size.height / 1.7,
      )
      ..quadraticBezierTo(
        size.width / 1.9,
        size.height / 1.75,
        size.width / 1.74,
        size.height / 1.81,
      );
    animateCoderPath(
        sharpApplePath, appleCanvasPaint, canvas, sharpAppleProgress!);

    final appleBranchPath = Path()
      ..moveTo(size.width / 2, size.height / 1.82)
      ..quadraticBezierTo(
        size.width / 2.1,
        size.height / 1.88,
        size.width / 1.8,
        size.height / 1.9,
      );
    animateCoderPath(
        appleBranchPath, appleCanvasPaint, canvas, branchAppleProgress!);

    final leftEyePath = Path()
      ..moveTo(size.width / 2.8, size.height / 3.3)
      ..addOval(
        Rect.fromCircle(
            center: Offset(size.width / 2.3, size.height / 3.3), radius: 3),
      );
    animateCoderPath(leftEyePath, coderCanvasPaint, canvas, leftEyeProgress!);

    final rightEyePath = Path()
      ..moveTo(size.width / 1.8, size.height / 3.3)
      ..addOval(
        Rect.fromCircle(
            center: Offset(size.width / 1.8, size.height / 3.3), radius: 3),
      );
    animateCoderPath(rightEyePath, coderCanvasPaint, canvas, rightEyeProgress!);

    final smilePath = Path()
      ..moveTo(size.width / 1.88, size.height / 3.1)
      ..quadraticBezierTo(
        size.width / 2,
        size.height / 3,
        size.width / 2.18,
        size.height / 3.1,
      );
    animateCoderPath(smilePath, coderCanvasPaint, canvas, rightEyeProgress!);
  }

  animateCoderPath(Path path, Paint paint, Canvas canvas, double progress) {
    PathMetrics shadowMetrics = path.computeMetrics();
    for (PathMetric pathMetric in shadowMetrics) {
      Path extractPath = pathMetric.extractPath(
        0.0,
        pathMetric.length * progress,
      );
      canvas.drawPath(extractPath, paint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
