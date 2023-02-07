import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ReadPage extends StatelessWidget {
  const ReadPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('title')
      ),
      body:
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children:  [
              const SizedBox(height: 60,),
              Text('title',
              style: GoogleFonts.itim(
              fontSize: 35,
              ),

              ),
              const SizedBox(height: 40,),
              const CircleAvatar(radius: 60,
                backgroundImage: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/thumb/b/b5/Henryk_Grynberg_Czwartek_na_Tłomackiem_Żydowski_Instytut_Historyczny_2016d.jpg/440px-Henryk_Grynberg_Czwartek_na_Tłomackiem_Żydowski_Instytut_Historyczny_2016d.jpg'),
                ),
             Container(child:
             
              const Text('Opowiadanie stanowi jedną z najczęściej wybieranych przez uczniów form wypracowań. Dzieje się tak dlatego, że uważane jest za formę najłatwiejszą. Na ten pogląd ma wpływ luźna przeważnie struktura tej wypowiedzi oraz fakt, że opowiadający (narrator) sam decyduje, które elementy opowiadania podać szerzej, które tylko zasygnalizować, a których w ogóle nie uwzględniać.W opowiadaniu nie zawsze trzeba ściśle trzymać się układu chronologicznego zdarzeń, można też odstąpić od prawdy, dając ujście swej fantazji i marzeniom. Często wśród tematów wypracowań klasowych znajdują się opowiadania na rozmaite tematy – tak zwane „tematy wolne”. '))
          ],
        ),
      ),
      


    );
  }
}