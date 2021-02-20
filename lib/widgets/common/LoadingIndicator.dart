import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoadingIndicatorWidget extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        print(constraints);
        return Container(          
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(12)                    
            ),
            child: const CircularProgressIndicator()
          )
        );
      }
    ); 
    
    
    // Container(
    //   child: DecoratedBox(
    //     decoration: BoxDecoration(
    //       color: Colors.red,
    //       borderRadius: BorderRadius.circular(12)                    
    //     ),
    //     child: CircularProgressIndicator()
    //   )
    // );
  }
}