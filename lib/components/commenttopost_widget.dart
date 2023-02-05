import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';

class CommenttopostWidget extends StatefulWidget {
  const CommenttopostWidget({Key? key}) : super(key: key);

  @override
  _CommenttopostWidgetState createState() => _CommenttopostWidgetState();
}

class _CommenttopostWidgetState extends State<CommenttopostWidget>
    with TickerProviderStateMixin {
  final animationsMap = {
    'containerOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 400.ms,
          begin: 0,
          end: 1,
        ),
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 400.ms,
          begin: 0.9,
          end: 1,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 400.ms,
          begin: Offset(0, 20),
          end: Offset(0, 0),
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 1),
      child: Container(
        width: 100,
        height: 148,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          boxShadow: [
            BoxShadow(
              blurRadius: 0,
              color: FlutterFlowTheme.of(context).lineColor,
              offset: Offset(0, 1),
            )
          ],
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(4, 0, 0, 0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 24,
                child: Stack(
                  alignment: AlignmentDirectional(0, 0),
                  children: [
                    Align(
                      alignment: AlignmentDirectional(0, -0.7),
                      child: Container(
                        width: 12,
                        height: 12,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryColor,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        VerticalDivider(
                          thickness: 2,
                          color: FlutterFlowTheme.of(context).primaryColor,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(4, 12, 0, 0),
                child: Container(
                  width: 44,
                  height: 44,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryColor,
                    shape: BoxShape.circle,
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(2, 2, 2, 2),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image.network(
                        'https://picsum.photos/seed/833/600',
                        width: 40,
                        height: 40,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 12),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            'Randy Mcdonald',
                            style: FlutterFlowTheme.of(context).subtitle1,
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                            child: Text(
                              'Assigned a task',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .bodyText1Family,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryColor,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .bodyText1Family),
                                  ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                        child: Text(
                          'Create a random launch request that needs to be fixed, this is very important for the success of your daily activities.',
                          style: FlutterFlowTheme.of(context).bodyText2,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: Text(
                                'View Details',
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .bodyText1Family,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryColor,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .bodyText1Family),
                                    ),
                              ),
                            ),
                            Text(
                              'Fri, Jan 6',
                              style: FlutterFlowTheme.of(context).bodyText2,
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(4, 0, 4, 0),
                              child: Text(
                                '||',
                                style: FlutterFlowTheme.of(context).bodyText2,
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 4, 0),
                              child: Text(
                                '4:20pm',
                                style: FlutterFlowTheme.of(context).bodyText2,
                              ),
                            ),
                            Icon(
                              Icons.chevron_right_rounded,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              size: 24,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation']!),
    );
  }
}
