import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../login/login_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashWidget extends StatefulWidget {
  const SplashWidget({Key? key}) : super(key: key);

  @override
  _SplashWidgetState createState() => _SplashWidgetState();
}

class _SplashWidgetState extends State<SplashWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: Stack(
        children: [
          Align(
            alignment: AlignmentDirectional(0, 0),
            child: InkWell(
              onTap: () async {
                await Navigator.push(
                  context,
                  PageTransition(
                    type: PageTransitionType.rightToLeft,
                    duration: Duration(milliseconds: 10),
                    reverseDuration: Duration(milliseconds: 10),
                    child: LoginWidget(),
                  ),
                );
              },
              child: SvgPicture.asset(
                'assets/images/ic_splash.svg',
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 1,
                fit: BoxFit.fill,
              ),
            ),
          ),
          Align(
            alignment: AlignmentDirectional(0.01, -0.01),
            child: SvgPicture.asset(
              'assets/images/ic_logo.svg',
              width: 100,
              height: 100,
              fit: BoxFit.cover,
            ),
          ),
          Align(
            alignment: AlignmentDirectional(0, 0.95),
            child: Text(
              'DRIVER',
              style: FlutterFlowTheme.of(context).title2.override(
                    fontFamily: 'Poppins',
                    color: FlutterFlowTheme.of(context).primaryBtnText,
                    fontSize: 18,
                    letterSpacing: 20,
                  ),
            ),
          ),
          Align(
            alignment: AlignmentDirectional(-0.1, 0.86),
            child: Text(
              'Drop & Collect',
              style: FlutterFlowTheme.of(context).title1.override(
                    fontFamily: 'Poppins',
                    color: FlutterFlowTheme.of(context).primaryBtnText,
                    fontSize: 34,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
