import 'package:get/get.dart';

class Translation implements Translations {
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
        "fr": {
          // q1
          "q_one_question":
              "Comment vous rendez-vous habituellement au travail ou à l'école ?",
          "q_one_choiceone": "Voiture",
          "q_one_choicetwo": "Vélo",
          "q_one_choicetree": "Marche à pied",
          "q_one_false": "Voiture",
          // q2
          "q_two_question":
              "À quelle fréquence laissez-vous vos appareils électroniques branchés lorsqu'ils ne sont pas utilisés ?",
          "q_two_choiceone": " Toujours",
          "q_two_choicetwo": "Occasionnellement",
          "q_two_choicetree": "Jamais",
          "q_two_false": " Toujours",
          // q3
          "q_three_question":
              "Utilisez-vous des appareils électroménagers économes en énergie à la maison ?",
          "q_three_choiceone": "  Oui, tous",
          "q_three_choicetwo": "Certains ",
          "q_three_choicetree": "Non",
          "q_three_false": " Non",
          // q4
          "q_four_question":
              "À quelle fréquence choisissez-vous des produits dont l'emballage est réduit au minimum ?",
          "q_four_choiceone": "  Toujours",
          "q_four_choicetwo": "Occasionnellement",
          "q_four_choicetree": "Rarement",
          "q_four_false": " Rarement",
          // q5
          "q_five_question":
              "Êtes-vous conscient de l'impact environnemental des produits que vous achetez ?",
          "q_five_choiceone": " Très conscient",
          "q_five_choicetwo": "Assez conscient ",
          "q_five_choicetree": "Pas du tout conscient",
          "q_five_false": " Pas du tout conscient",
          // q6
          "q_six_question":
              "À quelle fréquence consommez-vous de la viande ou des produits d'origine animale ?",
          "q_six_choiceone": " Chaque repas",
          "q_six_choicetwo": " Occasionnellement ",
          "q_six_choicetree": "Jamais",
          "q_six_false": " Chaque repas",
          // q7
          "q_seven_question":
              "À quelle fréquence pratiquez-vous le recyclage à la maison ?",
          "q_seven_choiceone": " Toujours",
          "q_seven_choicetwo": " Occasionnellement ",
          "q_seven_choicetree": "Jamais",
          "q_seven_false": " Jamais",
          // q8
          "q_eight_question":
              "À quelle fréquence participez-vous à des événements de nettoyage de la communauté ou de l'environnement ?",
          "q_eight_choiceone": " Régulièrement",
          "q_eight_choicetwo": " Occasionnellement ",
          "q_eight_choicetree": "Jamais",
          "q_eight_false": "Jamais",

          // q9
          "q_nine_question":
              "Plantez-vous des arbres ou pratiquez-vous des activités de jardinage ?",
          "q_nine_choiceone": "Oui, Régulièrement",
          "q_nine_choicetwo": " Occasionnellement ",
          "q_nine_choicetree": "Non",
          "q_nine_false": " Non",
          // q10
          "q_ten_question":
              "Êtes-vous prêt à explorer et à soutenir des projets de compensation carbone pour neutraliser vos émissions inévitables ?",
          "q_ten_choiceone": "Certainement",
          "q_ten_choicetwo": " Peut-être",
          "q_ten_choicetree": "Pas intéressé",
          "q_ten_false": " Pas intéressé",
        },
        "en": {
          // q1
          "q_one_question": "How do you typically commute to work or school?",
          "q_one_choiceone": "Private Car",
          "q_one_choicetwo": "Bicycle",
          "q_one_choicetree": "Walking",
          "q_one_false": "Private Car",
          // q2
          "q_two_question":
              "How often do you leave electronic devices plugged in when not in use?",
          "q_two_choiceone": "Always",
          "q_two_choicetwo": "Occasionally",
          "q_two_choicetree": "Never",
          "q_two_false": " Never",
          // q3
          "q_three_question": "Do you use energy-efficient appliances at home?",
          "q_three_choiceone": "  Yes, all of them",
          "q_three_choicetwo": "Some of them",
          "q_three_choicetree": "No",
          "q_three_false": " No",
          // q4
          "q_four_question":
              "How often do you choose products with minimal packaging?",
          "q_four_choiceone": "Always",
          "q_four_choicetwo": "Occasionally",
          "q_four_choicetree": "Rarely",
          "q_four_false": "Rarely",
          // q5
          "q_five_question":
              "Are you conscious of the environmental impact of the products you buy?",
          "q_five_choiceone": " Very conscious",
          "q_five_choicetwo": "Somewhat conscious ",
          "q_five_choicetree": "Not at all conscious",
          "q_five_false": "Not at all conscious",
          // q6
          "q_six_question": "How often do you consume meat or animal products?",
          "q_six_choiceone": " Every meal",
          "q_six_choicetwo": " Occasionally ",
          "q_six_choicetree": "Never",
          "q_six_false": "Every meal",
          // q7
          "q_seven_question": "How often do you practice recycling at home?",
          "q_seven_choiceone": " Always",
          "q_seven_choicetwo": " Occasionally ",
          "q_seven_choicetree": "Never",
          "q_seven_false": " Never",
          // q8
          "q_eight_question":
              "How often do you participate in community/environmental clean-up events?",
          "q_eight_choiceone": "regularly",
          "q_eight_choicetwo": " Occasionally ",
          "q_eight_choicetree": "Never",
          "q_eight_false": " Never",

          // q9
          "q_nine_question":
              "Do you plant trees or engage in any gardening activities?",
          "q_nine_choiceone": "Yes, regularly",
          "q_nine_choicetwo": " Occasionally ",
          "q_nine_choicetree": "No",
          "q_nine_false": " No",
          // q10
          "q_ten_question":
              "Are you willing to explore and support carbon offset projects to neutralize your unavoidable emissions?",
          "q_ten_choiceone": "Definitely ",
          "q_ten_choicetwo": " Maybe",
          "q_ten_choicetree": "Not interested",
          "q_ten_false": " Not interested",
        },
        "es": {
          // q1
          "q_one_question": "Cómo suele desplazarse al trabajo o al colegio?",
          "q_one_choiceone": "Coche privado ",
          "q_one_choicetwo": "Bicicleta",
          "q_one_choicetree": "A pie",
          "q_one_false": "Coche privado ",
          // q2
          "q_two_question":
              "Con qué frecuencia dejas los aparatos electrónicos enchufados cuando no los utilizas?",
          "q_two_choiceone": " Siempre ",
          "q_two_choicetwo": "Ocasionalmente",
          "q_two_choicetree": "Rara vez o nunca",
          "q_two_false": "  Siempre",
          // q3
          "q_three_question":
              "Utiliza en casa electrodomésticos de bajo consumo?",
          "q_three_choiceone": "  Sí, todos",
          "q_three_choicetwo": "Algunos ",
          "q_three_choicetree": "Ningún",
          "q_three_false": " Ningún",
          // q4
          "q_four_question":
              "Con qué frecuencia eliges productos con un embalaje mínimo?",
          "q_four_choiceone": "Siempre",
          "q_four_choicetwo": "De vez en cuando",
          "q_four_choicetree": "Rara vez ",
          "q_four_false": "Rara vez ",
          // q5
          "q_five_question":
              "Eres consciente del impacto medioambiental de los productos que compras?",
          "q_five_choiceone": "Muy consciente",
          "q_five_choicetwo": "Algo consciente",
          "q_five_choicetree": "Nada consciente",
          "q_five_false": "Nada consciente",
          // q6
          "q_six_question":
              "Con qué frecuencia consumes carne o productos de origen animal?",
          "q_six_choiceone": "Cada comida",
          "q_six_choicetwo": "Ocasionalmente",
          "q_six_choicetree": " Rara vez o nunca",
          "q_six_false": " Cada comida",
          // q7
          "q_seven_question":
              "Con qué frecuencia practica el reciclaje en casa?",
          "q_seven_choiceone": "Siempre",
          "q_seven_choicetwo": "Ocasionalmente",
          "q_seven_choicetree": "Nunca",
          "q_seven_false": "Nunca",
          // q8
          "q_eight_question":
              "Con qué frecuencia participas en eventos de limpieza de la comunidad/medio ambiente?",
          "q_eight_choiceone": "Regularmente",
          "q_eight_choicetwo": " Ocasionalmente",
          "q_eight_choicetree": " Nunca",
          "q_eight_false": " Nunca",

          // q9
          "q_nine_question":
              "Planta árboles o realiza alguna actividad de jardinería?",
          "q_nine_choiceone": " Sí, regularmente",
          "q_nine_choicetwo": "Ocasionalmente",
          "q_nine_choicetree": "No",
          "q_nine_false": "No",
          // q10
          "q_ten_question":
              "Está dispuesto a explorar y apoyar proyectos de compensación de carbono para neutralizar sus emisiones inevitables?",
          "q_ten_choiceone": "Definitivamente",
          "q_ten_choicetwo": "Tal vez",
          "q_ten_choicetree": "No me interesa",
          "q_ten_false": "No me interesa",
        },
      };
}
