import 'dart:io';
import 'book.dart';
import 'author.dart';
void main() {
  String?athin;
  bool xm=true;
  bool xc=false;
  String? chsath;
  String? chsbook;
  Author? a;

  print("Welcome to our Book  store Application");
  print('----------------------------------');
  print('Books authors choose one:\n');
  print('1. Emma Johnson');
  print('2. Robert Chen');
  print('3. Emily Patel');
  print('4. Daniel Williams');
      Book? b1;
      Book? b2;
      Book? b3;
      Book? b4;
  do{
  print('Enter author you interested with his books..');
  chsath = stdin.readLineSync();
  if (chsath != null){
    int n = int.parse(chsath);
    if (n==1){
      xc=false;
      a=Author(name:'Emma Johnson', country:"United States", bio: "Biography: Julia Anderson is an award-winning author known for her heartwarming and emotionally evocative stories. With a background in psychology, she often explores themes of personal growth and human connection in her novels. Her writing style captures the essence of changing seasons and emotions, drawing readers into immersive worlds");
      b1=Book("Summer Breeze",2015 ,12.99);
      b2=Book("Autumn Leaves", 2017,14.50);
      b3=Book("Winter Whispers", 2019,13.75);
      b4=Book("Spring Serenity",2022,11.99);
    }
    else if (n==2){
      xc=false;
      a=Author(name:'Robert Chen', country:"United Kingdom", bio: "Biography: A former detective turned novelist, Robert Chen infuses his gripping mysteries with insider knowledge of law enforcement. His intricate plots and multifaceted characters have earned him a dedicated following. He's known for his ability to create a sense of unease that keeps readers guessing until the very end.");
      b1=Book("Shadow Games", 2016,15.25);
      b2=Book("Crimson Secrets", 2018,16.99);
      b3=Book("Silent Vendetta", 2020,14.75);
      b4=Book("Fatal Allure",2023, 17.50);
    }
    else if (n==3){
      xc=false;
      a=Author(name:"Emily Patel", country:"India", bio: "Biography: Emily Patel's background in folklore and mythology is evident in her fantastical stories that transport readers to worlds both magical and mysterious. Her writing is often imbued with themes of identity and self-discovery, creating narratives that resonate deeply with readers on personal levels.");
      b1=Book("Echoes of Eternity", 2017,7.99);
      b2=Book("Whispering Dreams",2019, 9.50);
      b3=Book("Shattered Illusions",2021, 11.25);
      b4=Book("Fading Starlight",2024, 8.75);
    }
    else if (n==4){
      xc=false;
      a=Author(name:'Daniel Williams', country:"Canada", bio: "Biography: Daniel Williams is a master of epic fantasy, known for crafting intricate worlds and intricate political landscapes that draw readers into complex adventures. His writing is characterized by rich world-building and layered characters facing moral dilemmas that challenge traditional notions of heroism.");
      a.name='Daniel Williams';
      b1=Book("City of Mirrors",2018, 6.99);
      b2=Book("Rising Shadows",2020, 7.75);
      b3=Book("Forgotten Chronicles",2022, 8.50);
      b4=Book("Eternal Twilight", 2021,19.99);
    }
    
    else {
      print("Invalid Input");
      xc=true;

    }
  }
  }while(xc==true);
    print("The ${a?.name} Books list are");
    print('------------------------------');
    print('1. ${b1?.title}');
    print('2. ${b2?.title}');
    print('3. ${b3?.title}');
    print('4. ${b4?.title}');
    while(xm==true){
    print("choose the Book you want to buy from ${a?.name} author...");
    chsbook = stdin.readLineSync();
    if (chsbook != null){
    int x = int.parse(chsbook);
    if (x==1){
      xm=false;
      print("The price of ${b1?.title} Book written by ${a?.name} author is : \$${b1?.price}");
    }
    else if (x==2){
      xm=false;
      print("The price of ${b2?.title} Book written by  ${a?.name} author is : \$${b2?.price}");
    }
    else if (x==3){
      xm=false;
      print("The price of ${b3?.title} Book written by  ${a?.name} Author is : \$${b3?.price}");
    }
    else if (x==4){
      xm=false;
      print("The price of ${b4?.title} Book written by ${a?.name} author is : \$${b4?.price}");
    }
    else{
      print("Invalid Input");
    }

    }


    }
    print("\nDisplay more information about book author :${a?.name} (y/n)");
    athin=stdin.readLineSync();
    if(athin=='y'){
      print("\nAuthor:${a?.name}");
      print("   Origin Country:${a?.country}");
      print("${a?.bio}");
    }
  }
