## code to prepare `palmares` dataset goes here

palmares <- structure(
  list(adversaire =
         c("Joueur Anonyme", "Joueur Anonyme",
           "Joueur Anonyme", "Joueur Anonyme", "Joueur Anonyme", "Joueur Anonyme",
           "Joueur Anonyme", "Joueur Anonyme", "Joueur Anonyme", "Joueur Anonyme",
           "Joueur Anonyme", "Joueur Anonyme", "Joueur Anonyme", "Joueur Anonyme",
           "Joueur Anonyme", "Joueur Anonyme", "Joueur Anonyme", "Joueur Anonyme",
           "Joueur Anonyme", "Joueur Anonyme", "Joueur Anonyme", "Joueur Anonyme",
           "Joueur Anonyme"),
       ne_en = c("_", "_", "_", "_", "_", "_", "_",
                 "_", "_", "_", "_", "_", "_", "_", "_", "_", "_", "_", "_", "_",
                 "_", "_", "_"),
       classement = c("30/1", "15/5", "15/5", "15/5", "30", "30/1", "15/5", "30",
                      "30/1", "30/3", "30", "30", "30/1", "30/2", "30", "30/2", "15/5",
                      "15/5", "15/4", "15/5", "15/2", "30", "15/4"),
       issue = c("V", "V", "V", "V", "V",
                 "V", "V", "V", "V", "V", "V", "V", "V", "V", "V", "V", "D", "D",
                 "D", "D", "D", "D", "D"),
       score = c("3/4 0/0  abandon", "6/0 6/2",
                 "6/4 6/3", "6/3 6/0", "6/2 6/4", "6/2 3/6 6/2", "6/3 6/4", "6/0 6/3",
                 "6/1 6/3", "6/2 6/1", "4/6 6/4 6/3", "4/1 4/1", "4/3(2) 4/1",
                 "4/1 2/4 10/5", "6/2 6/0", "6/2 6/0", "WO", "3/6 6/4 10/8", "6/3 6/1",
                 "2/6 6/4 6/2", "6/3 6/4", "2/4 4/3(5) 10/5", "5/7 6/2 6/2"),
       competition = c("coupe hiver seniors messieurs", "CHAMPIONNAT DPT INDIVIDUEL SENIORS 3ème SERIE 2025",
                       "coupe hiver seniors messieurs", "CHAMPIONNAT DPT INDIVIDUEL SENIORS 3ème SERIE 2025",
                       "CHAMPIONNAT DPT INDIVIDUEL SENIORS 3ème SERIE 2025", "Tournoi de la toussaint",
                       "Tournoi de la toussaint", "TMC MESSIEURS de 30/2 à 15/5",
                       "TMC MESSIEURS de 30/2 à 15/5", "TMC MESSIEURS de 30/2 à 15/5",
                       "TOURNOI INTERNE", "TMC Hommes 30/2-15/4", "TMC Hommes 30/2-15/4",
                       "TMC Hommes 30/2-15/4", "lna - interclubs seniors messieurs 2024",
                       "Tournoi hiver Aytré 2024", "Tournoi de la toussaint", "TMC MESSIEURS de 30/2 à 15/5",
                       "TOURNOI INTERNE", "lna - interclubs seniors messieurs 2024",
                       "lna - interclubs seniors messieurs 2024", "TMC Hommes 30/2-15/4",
                       "Tournoi hiver Aytré 2024"),
       coef = c(1, 1, 1, 1, 1, 1,
                1, 1, 1, 1, 1, 0.6, 0.6, 0.6, 1, 1, 1, 1, 1, 1, 1, 0.6, 1
       ),
       joue_le = c("08/12/24", "02/12/24", "24/11/24", "23/11/24",
                   "28/10/24", "20/10/24", "20/10/24", "07/07/24", "06/07/24",
                   "06/07/24", "19/05/24", "28/04/24", "27/04/24", "26/04/24",
                   "07/04/24", "31/01/24", "21/10/24", "07/07/24", "25/05/24",
                   "12/05/24", "05/05/24", "28/04/24", "31/01/24"),
       date_val = c("Décembre 2025",
                    "Décembre 2025", "Novembre 2025", "Novembre 2025", "Octobre 2025",
                    "Octobre 2025", "Octobre 2025", "Juillet 2025", "Juillet 2025",
                    "Juillet 2025", "Mai 2025", "Avril 2025", "Avril 2025", "Avril 2025",
                    "Avril 2025", "Janvier 2025", "Octobre 2025", "Juillet 2025",
                    "Mai 2025", "Mai 2025", "Avril 2025", "Avril 2025", "Janvier 2025"
       )), row.names = c(NA, -23L), class = c("tbl_df", "tbl", "data.frame"
       ))

palmares$match_type <- rep("single",nrow(palmares))

usethis::use_data(palmares, overwrite = TRUE)
