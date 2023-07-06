import 'package:flutter/material.dart';

class Data {

  data(){
    List<Map<String,dynamic>> datas = [
      {
        'question':
        '1. In the Film "OMG Oh My God" Kanji Bhai filed a case against whom for the damage of his shop due to an earthquake?',
        'correct_ans': 'Bhagwan',
        'wrong_ans': ['Bharat Mata', 'Parliment', 'Mumbai City','Bhagwan'],
        'color': Colors.pink[700],
        'prize': 1000
      },
      {
        'question':
        '2. What is the new name of the Hydrabad franchise that wold replace Deccan Charges in IPL6',
        'correct_ans': 'Sun risers Hydrabad',
        'wrong_ans': ['Sun Charges', 'Sun risers Hydrabad','Nizam Jyothi', 'Andhra Aces'],
        'color': Colors.deepPurple[700],
        'prize': 2000
      },
      {
        'question':
        '3. In India, under which Union Ministry does the \'Rajbhasha Vibhag\' function?',
        'correct_ans': 'Home Affairs',
        'wrong_ans': ['Home Affairs','HRD', 'Culture', 'Law & Justice'],
        'color': Colors.red[700],
        'prize': 3000
      },
      {
        'question':
        '4. Accorrding to a proverb,what is said to be \'the mother of invention\'?',
        'correct_ans': 'Necessity',
        'wrong_ans': ['Society', 'Problem', 'Necessity','Science'],
        'color': Colors.yellow[700],
        'prize': 5000
      },
      {
        'question':
        '5. Which actress got marred to Siddharth Roy Kapur in 2012 ?',
        'correct_ans': 'Vidhya Balan',
        'wrong_ans': ['Prachi Desai', 'Lisa Ray','Vidhya Balan', 'Susmita Sen'],
        'color': Colors.greenAccent[700],
        'prize': 10000
      },
      {
        'question':
        '6. To whom did Ravindranath Tagore dedicate his book \'Visva parichay\' written on science',
        'correct_ans': 'Satyendranath Bose',
        'wrong_ans': ['Satyendranath Bose','C v raman', 'P c Royn', 'Jagdish Chandra Bose'],
        'color': Colors.tealAccent[700],
        'prize': 20000
      },
      {
        'question':
        '7. Which of these is a chemical element present in the perioddic table?',
        'correct_ans': 'Americium',
        'wrong_ans': ['Eurocium', 'Asiacium', 'Africium','Americium'],
        'color': Colors.red[700],
        'prize': 40000
      },
      {
        'question': '8. Which of these is not a work of Kalidas?',
        'correct_ans': 'Kadambari',
        'wrong_ans': ['Raghuvamsham','Kadambari', 'Vikramorvasiyam', 'Meghadutam'],
        'color': Colors.purple[700],
        'prize': 80000
      },
      {
        'question':
        '9. Acording to the Devi, Bhagavata, from the tears of which god is thee rudraksha tree belived to have been created?',
        'correct_ans': 'Shiva',
        'wrong_ans': ['Vishnu', 'Krishna', 'Shiva','Kamadevs'],
        'color': Colors.deepPurple[700],
        'prize': 160000
      },
      {
        'question': '10. Which of these names means \'gold-like\'?',
        'correct_ans': 'Sonam',
        'wrong_ans': ['Sonakshi','Sonam','Deepika', 'Katrina'],
        'color': Colors.orange[700],
        'prize': 320000
      },
    ];
    return datas;
  }
}
