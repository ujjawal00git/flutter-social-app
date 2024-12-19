import 'package:flutter/material.dart';
import 'package:socialapp/login.dart';
import 'package:socialapp/profile.dart';
import 'package:socialapp/search.dart';
import 'package:socialapp/share.dart';
import 'Sendpage.dart';
import 'create_post.dart';
import 'comment.dart';
import 'home.dart';
import 'like.dart';
import 'like_1.dart';
import 'notification.dart';

void main() {

  runApp(InstagramCloneApp());
}

class InstagramCloneApp extends StatefulWidget {
  @override
  State<InstagramCloneApp> createState() => _InstagramCloneAppState();
}

class _InstagramCloneAppState extends State<InstagramCloneApp> {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.white,
        fontFamily: 'Roboto',
      ),
      //home: InstagramHomePage(),
      home: Login(),
    );
  }
}

class InstagramHomePage extends StatelessWidget {
  @override
  List name = ["Sulochana_Mishraji","Janki_Yadav412","Rajkumar_465","munni_734","Ambika_Nagwanshi76",
    "Rajani_Shiv","shakuntala_123","Rajeswari_Sonwane","Shilpa","_Lalita48",
    "Shivani_tripathi","Ms.pushpa","savitribai_085","Maya_Gupta","Kalawati_Yadav",
    "Urmila_Yadav", "Uma_bai","Vimla_Ambule","Sombati_Gour","Urmila_Pal",
    "Sunita__01","Reena_Koche349","Kajal_Uikey"];

  List pname = ["Janki_Yadav412","Urmila_Pal","Sukli_kalar","Sombati_Gour",
    "sunita__01","Ms.pushpa","Rajeswari_Sonwane","Sangita_bai_72","_Lalita48",
    "Shivani_tripathi","shakuntala_123","savitribai_085","Kalawati_Yadav",
    "Urmila_Yadav", "Uma_bai","Vimla_Ambule","Ambika_Nagwanshi76","Rajkumari_465",
    "Rajani_Shiv","Sulochana_Mishra","Shilpa","Aasha_katiya","Munni_734"];


  List images = [
    "assets/images/WhatsApp Image 2024-04-08 at 12.03.04_0e3dd379.jpg",
    "assets/images/WhatsApp Image 2024-04-09 at 11.40.48_f1c60de3.jpg",
    "assets/images/WhatsApp Image 2024-04-08 at 14.44.36_595ca13f.jpg",
    "assets/images/WhatsApp Image 2024-04-08 at 14.44.36_c360a582.jpg",
    "assets/images/WhatsApp Image 2024-04-09 at 11.40.56_6a3499e4.jpg",
    "assets/images/WhatsApp Image 2024-04-08 at 14.44.37_ba6361a4.jpg",
    "assets/images/WhatsApp Image 2024-04-08 at 22.04.33_30ddd807.jpg",
    "assets/images/WhatsApp Image 2024-04-08 at 22.19.48_50cb3eb3.jpg",
    "assets/images/WhatsApp Image 2024-04-08 at 22.23.17_6c109798.jpg",
    "assets/images/WhatsApp Image 2024-04-08 at 23.05.39_a12a0383.jpg",
    "assets/images/WhatsApp Image 2024-04-09 at 11.40.59_b2dc2eb7.jpg",
  "assets/images/WhatsApp Image 2024-04-09 at 11.40.57_ab9e55b9.jpg",
  "assets/images/WhatsApp Image 2024-04-09 at 11.42.12_d19d712d.jpg",
  "assets/images/WhatsApp Image 2024-04-09 at 11.40.58_d293ba21.jpg",
  "assets/images/WhatsApp Image 2024-04-09 at 11.42.12_d19d712d.jpg",
  "assets/images/WhatsApp Image 2024-04-09 at 11.41.00_08f5aa75.jpg",
  "assets/images/WhatsApp Image 2024-04-09 at 11.40.59_b2dc2eb7.jpg",
  "assets/images/WhatsApp Image 2024-04-09 at 11.40.59_93d877b3.jpg",
  "assets/images/WhatsApp Image 2024-04-08 at 14.44.35_0c46c3fa.jpg",
  "assets/images/WhatsApp Image 2024-04-09 at 11.40.51_ac9ec652.jpg",
    "assets/images/WhatsApp Image 2024-04-09 at 11.40.52_99fbd6db.jpg",
    "assets/images/WhatsApp Image 2024-04-08 at 14.44.36_e73f9cdd.jpg",
    "assets/images/WhatsApp Image 2024-04-09 at 11.40.56_eade2d2c.jpg"
    ];

  // List dp = ["https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQZ-rqj-T0YTR8n8NU9WHVJnAwT6NMdOYo-lEGDEOt_Gw&s",
  //   "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQZ-rqj-T0YTR8n8NU9WHVJnAwT6NMdOYo-lEGDEOt_Gw&s",
  //   "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQZ-rqj-T0YTR8n8NU9WHVJnAwT6NMdOYo-lEGDEOt_Gw&s",
  //   "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQZ-rqj-T0YTR8n8NU9WHVJnAwT6NMdOYo-lEGDEOt_Gw&s",
  //   "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQZ-rqj-T0YTR8n8NU9WHVJnAwT6NMdOYo-lEGDEOt_Gw&s",
  //   "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQZ-rqj-T0YTR8n8NU9WHVJnAwT6NMdOYo-lEGDEOt_Gw&s",
  //   "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQZ-rqj-T0YTR8n8NU9WHVJnAwT6NMdOYo-lEGDEOt_Gw&s",
  //   "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQZ-rqj-T0YTR8n8NU9WHVJnAwT6NMdOYo-lEGDEOt_Gw&s"];
  // List dp = ["https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSDsYaXMwuq0OB_ZASmTzZsZYSZohyAXaIaFEyLvAU10Q&s",
  //   "https://img.freepik.com/free-photo/young-beautiful-woman-pink-warm-sweater-natural-look-smiling-portrait-isolated-long-hair_285396-896.jpg?size=626&ext=jpg&ga=GA1.1.1700460183.1712620800&semt=ais",
  //   "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQZ-rqj-T0YTR8n8NU9WHVJnAwT6NMdOYo-lEGDEOt_Gw&s",
  //   "https://media.istockphoto.com/id/474775374/photo/smiling-rural-indian-women.jpg?s=612x612&w=0&k=20&c=4_nA2ugnnnd1ct-fJIuGmJb_dEeQtM4gM4ALW8D_NiE=",
  //   "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSHwaXhDU8vnabMuOToS3bSN0M_5baxOJIAU_bWMFJOvQ&s",
  //   "https://www.shutterstock.com/image-photo/unidentified-indian-lady-pushkar-camel-260nw-782238334.jpg",
  //   "https://www.shutterstock.com/image-photo/portrait-indian-woman-sari-standing-260nw-2010501434.jpg",
  //   "https://www.visualsstock.com/details_watermark.php?filename=57284","assets/images/WhatsApp Image 2024-04-08 at 12.03.04_0e3dd379.jpg",
  //   "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQa_c9jLSGaDTpX4OJD8X96Y52uTOXQpoaBJY_7Vl1VAA&s",
  //   "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTok3VeyunydlymROQdgRPPLZmyz9h6w6FwokNphilPjQ&s",
  //   "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQGV5irNF3Dw0d2o5Ymg5pnR9fvr5VqBAB3wmHqHP1nzg&s",
  //   "https://www.shutterstock.com/image-photo/udaipur-march-25-women-posing-260nw-307523147.jpg",
  //   "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQNosVb_bcBnCgs9oDSmxEsH8RXMMsZg-STwjXLlpX7Lg&s",
  //   "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQGV5irNF3Dw0d2o5Ymg5pnR9fvr5VqBAB3wmHqHP1nzg&s",
  //   "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTok3VeyunydlymROQdgRPPLZmyz9h6w6FwokNphilPjQ&s",
  //   "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSS632-jRoyHaUDZ4pYqpu8y1FZ9_Fdsmhisw&s",
  //   "https://media.istockphoto.com/id/1153807471/photo/indian-woman-stock-image.jpg?s=612x612&w=0&k=20&c=i7oMwQc3qtx3V29dX29JNDGveL3K4vy132HX1tz6ghE=",
  //   "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSCol15o5j_gyb7ssig_dz0f_K1ed_uq681TtfQisKrfQ&s",
  //   "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRhtBiG_hIWUv4ilW5JC6GX31RxFEoBrzAx9OVChrwgvw&s",
  //   "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQmOJ3jhuIgwsyXUx25CR72otS0naz0Mm4iacVBgDXuPIMbQe70m-ooLtMsDT1l9DnVmEQ&usqp=CAU",
  //   "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQsZIjAYTFTuLH1VdO3ew01rKjsuL14Tky5aupNHr86Lg&s",
  //   "https://media.gettyimages.com/id/1364447810/photo/woman-in-sari-stock-photo.jpg?s=612x612&w=gi&k=20&c=rypl5Gnp2LrNWEl9abW9IYMulGXxAxGwGQkZrOjzx2M=",
  //   "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRvT0yFBiKQCYKTntSSaEcg63ebDM-vV8MS-6PQoqjgpQ&s",
  //   "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSZlR0yQSK0Z3RqC8OFc-w4c4Z6_zInTZ4srQn_SyoRqQ&s",
  //   "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRrChccfgqg9M7e9-joSAoLPn7Zit2PdYJi1KuiwV2Wfw&s",
  // ];

  List dp = ["assets/dp/images.jpeg",
    "assets/dp/images (1).jpeg",
    "assets/dp/images (2).jpeg",
    "assets/dp/images (3).jpeg"
    ,"assets/dp/images (4).jpeg",
    "assets/dp/images (5).jpeg",
    "assets/dp/images (6).jpeg",
    "assets/dp/images (7).jpeg",
    "assets/dp/images (8).jpeg",
    "assets/dp/images (9).jpeg",
    "assets/dp/images (10).jpeg",
    "assets/dp/images (11).jpeg",
    "savitassets/dp/images (12).jpeg",
    "assets/dp/images (13).jpeg",
    "assets/dp/istockphoto-1153807471-612x612.jpg",
    "assets/dp/portrait-indian-woman-sari-standing-260nw-2010501434.webp",
    "assets/dp/udaipur-march-25-women-posing-260nw-307523147.webp",
    "assets/dp/unidentified-indian-lady-pushkar-camel-260nw-782238334 (1).webp",
    "assets/dp/VisualsStock_AK57284.jpg",
    "assets/dp/images (14).jpeg.jpg",
    "assets/dp/images (15).jpeg.jpg",
    "assets/dp/images (16).jpeg.jpg",
    "assets/dp/images (17).jpeg.jpg"
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        leading: IconButton(
          icon: Icon(Icons.camera_alt_outlined),
          color: Colors.black,
          onPressed: () {},
        ),
        title: Row(
          children: [
            Image.asset(
              'assets/images/logo.png',
              height: 31,
            ),
            Text("   Rural Health Share",
            style: TextStyle(fontSize: 20,color:Colors.indigo,
                fontStyle: FontStyle.normal,wordSpacing:-2),
            ),
          ],
        ),


        actions: <Widget>[

          IconButton(
            icon: Icon(Icons.notifications),
            color: Colors.black,
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => NotficationPage(),));
            },
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          _buildStoryList(),
          _buildPostList(),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 55,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.home),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(),));
              },
            ),
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => SearchPage(),));},
            ),
            IconButton(
              icon: Icon(Icons.add_box_outlined),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => AddPage(),));
              },
            ),
            IconButton(
              icon: Icon(Icons.favorite_border),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => LikePage(),));
                },
            ),
            IconButton(
              icon: Icon(Icons.account_circle),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => ProfilePage(),));
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStoryList() {
    return Container(
      height: 100,
      margin: EdgeInsets.symmetric(vertical: 10),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: dp.length,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              children: <Widget>[
                Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(image: AssetImage(dp[index])),
                    border: Border.all(
                      color: Colors.black,
                      width: 2,
                    ),
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  name[index],
                  style: TextStyle(fontSize: 12),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _buildPostList() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(16),
          child: Text(
            'Recent Posts',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: images.length,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      CircleAvatar(
                        radius: 16,
                        backgroundImage: AssetImage(
                            dp[index]),
                      ),
                      SizedBox(width: 8),
                      Text(
                        pname[index],
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                    ],

                  ),
                  SizedBox(height: 8),
                  Container(
                    height: 500,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: DecorationImage(
                        image: AssetImage(images[index]),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),

                  SizedBox(height: 100),
                  Row(
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.favorite_border),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => LikePage1(isLiked: false, onLikePressed: (isLiked) {
                            print("Post is liked: $isLiked");
                          }),));
                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.comment_outlined),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => CommentPage(),));
                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.share_outlined),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => SharePage(),));
                        },
                      ),
                      SizedBox(width: 8),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Remarks......."
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        ),
      ],
    );
  }
}
