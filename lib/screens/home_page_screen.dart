import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      SafeArea(
        child: Scaffold(
          body: Container(
            height: double.infinity,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Image(
                  image: AssetImage('assets/images/home_header.png'),
                  height: MediaQuery.of(context).size.height,
                  alignment: Alignment.topCenter,
                ),
                Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height*.6,
                  padding: EdgeInsets.all(20),
                  decoration: const BoxDecoration(
                    color: Color(0xffEEFFF0),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      topLeft: Radius.circular(20),
                    )
                  ),
                  child: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: Column(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height*.15,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Stack(
                            alignment: Alignment.topRight,
                            clipBehavior: Clip.antiAlias,
                            children:  [
                              const Image(image: AssetImage('assets/images/quran.png'),
                                width: double.infinity,
                              ),
                              const Align(
                                alignment: Alignment.topRight,
                                child:  Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text('القران الكريم',style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold
                                  ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: const[
                                      Icon(Icons.arrow_back_ios,color: Colors.white,),
                                       Text('بدء القراءة',style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold
                                      ),
                                      ),

                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(height: 20,),
                        Row(
                          children: [
                            Expanded(
                              flex: 2,
                              child: Container(
                                height: MediaQuery.of(context).size.height*.15,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Stack(
                                  children: [
                                    const Image(image: AssetImage('assets/images/hadeth.png'),
                                      width: double.infinity,
                                      fit: BoxFit.fill,
                                    ),
                                    const Align(
                                      alignment: Alignment.topRight,
                                      child:  Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Text('الحديث الشريف',style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold
                                        ),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.bottomLeft,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Row(
                                          children: const[
                                            Icon(Icons.arrow_back_ios,color: Colors.white,),
                                            Text('الذهاب',style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold
                                            ),
                                            ),

                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(width: 10,),
                            Expanded(
                              flex: 1,
                              child: Container(
                                height: MediaQuery.of(context).size.height*.15,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Stack(
                                  children: [
                                    const Image(image: AssetImage('assets/images/hadeth.png'),
                                      width: double.infinity,
                                      height: double.infinity,
                                      fit: BoxFit.fill,
                                    ),
                                    const Align(
                                      alignment: Alignment.topCenter,
                                      child:  Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: AutoSizeText('استغفر الله',style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                        ),
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.bottomLeft,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Row(
                                          children: const[
                                            Image(image: AssetImage('assets/images/finger_print.png'),
                                              width: 20,
                                            ),
                                            SizedBox(width: 5,),
                                            Text('216',style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold
                                            ),
                                            ),

                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20,),
                        Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Container(
                                height: MediaQuery.of(context).size.height*.15,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Stack(
                                  children: [
                                    const Image(image: AssetImage('assets/images/qebla.png'),
                                      width: double.infinity,
                                      height: double.infinity,
                                      fit: BoxFit.fill,
                                    ),
                                    Align(
                                      alignment: Alignment.bottomLeft,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Row(
                                          children: const[
                                            Icon(Icons.arrow_back_ios,color: Colors.white,),
                                            Text('القبلة',style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold
                                            ),
                                            ),

                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(width: 10,),
                            Expanded(
                              flex: 2,
                              child: Container(
                                height: MediaQuery.of(context).size.height*.15,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Stack(
                                  children: [
                                    const Image(image: AssetImage('assets/images/azkar.png'),
                                      width: double.infinity,
                                      height: double.infinity,
                                      fit: BoxFit.fill,
                                    ),
                                    const Align(
                                      alignment: Alignment.topRight,
                                      child:  Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Text('اذكاري',style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold
                                        ),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.bottomLeft,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Row(
                                          children: const[
                                            Icon(Icons.arrow_back_ios,color: Colors.white,),
                                            SizedBox(width: 5,),
                                            Text('الذهاب',style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold
                                            ),
                                            ),

                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20,),
                        Container(
                          height: MediaQuery.of(context).size.height*.15,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Stack(
                            alignment: Alignment.topRight,
                            clipBehavior: Clip.antiAlias,
                            children:  [
                              const Image(image: AssetImage('assets/images/alsalah.png'),
                                width: double.infinity,
                              ),
                              const Align(
                                alignment: Alignment.topRight,
                                child:  Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text('مواقيت الصلاة',style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold
                                  ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: const[
                                      Icon(Icons.arrow_back_ios,color: Colors.white,),
                                      Text('الذهاب',style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold
                                      ),
                                      ),

                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      );
  }
}
