math.randomseed(os.time())

function randomheader()
    local headers = {
        {
            "⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠠⡐⢠⠂⡔⠰⣀⠆⡠⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡀⢠⠀⡂⠔⡠⢂⠢⡐⠄⡂⢀⠀⠀⠀⠀⠀⠀⠀⠀",
            "⣿⣿⣿⠏⠀⠀⠀⠀⡀⢂⠔⡐⢄⠊⡔⢡⠢⡘⠠⢁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠐⠀⢃⠐⠠⢁⠐⠠⠐⠀⠀⠀⠀⠀⠀⠀⠀⠀",
            "⣿⡿⣏⠀⠀⠄⢂⠡⠐⡈⠔⡈⢆⠱⣈⣶⣷⡡⢗⡆⣖⡀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠀⡀⠄⠠⠀⠄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
            "⣿⡟⡧⠀⠌⡐⣀⠂⣥⣐⡼⣶⣾⣷⣿⣿⣿⡧⢋⣧⢻⣦⣀⠀⠀⠀⠀⠀⠀⠠⠀⢀⠀⡐⠀⢁⠠⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
            "⣿⣿⣶⣯⣶⡵⣞⣷⣷⣯⣿⣿⣿⣿⣿⣿⠏⡔⠡⢻⠒⣿⣿⣦⡀⡀⠀⠀⠀⢀⠐⠠⠀⠄⠈⡀⢀⠀⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
            "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⡟⠓⡌⠄⡑⢂⠥⠘⠿⣿⣿⣷⣤⣔⡈⣀⡀⢂⠌⡐⢀⠠⢀⠈⡀⠀⠀⠀⠀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
            "⣿⣿⣿⣿⣿⣿⣿⡿⢿⠛⢯⡙⡑⢒⠈⡡⠐⢂⠐⠌⣂⠡⢒⠈⠻⣿⣿⣿⣾⣷⣟⣶⣲⣴⣮⣶⣥⣞⣴⣳⣶⣠⢂⠄⣈⠐⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡀⠀⠀⠀",
            "⣿⣿⣿⣿⣿⣿⠭⡘⠤⡉⢆⠰⠡⢌⠂⠥⡘⠠⢈⡐⠄⠢⡉⢌⡐⢈⠹⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣦⢐⠁⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠀⠀⠀⢀",
            "⣿⣿⣿⣿⣿⣿⣇⢇⡄⢣⠘⡄⢣⠘⡸⢀⠣⡘⡀⠠⡘⠃⣠⠄⡸⢀⠃⡄⠛⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⣄⢄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡘⠀⠀⠀⢀⣼",
            "⣿⣿⣿⣿⣿⣿⣿⣷⣴⠂⣇⠜⡠⢃⢆⡉⢆⠱⡈⢅⠰⠁⠠⢚⡔⢡⠊⡄⢡⠂⠤⡉⢍⠛⡛⠿⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⢠⠀⠀⠀⠀⠀⠀⠀⠀⢀⠘⡀⠃⢀⣴⣿⡿",
            "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣮⡂⢉⣖⣶⣱⣎⢦⡱⢌⣒⠀⡁⢢⠘⡆⠱⣈⠆⡉⢆⠱⡈⢆⠱⢌⠣⡐⢌⡩⠻⢿⣿⣿⣿⣿⣿⣿⡾⠄⠀⠀⠀⠀⠀⠀⠀⡌⢂⢄⣴⣿⣿⣿⣿",
            "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣿⡿⣿⣿⣶⣿⣧⢎⡇⢀⠣⣉⠆⡓⡔⣊⠕⣪⢱⡘⢆⡣⢎⡒⠥⠒⡄⠓⡌⠜⣩⠛⣿⣿⣿⣿⠂⠀⠀⠀⠀⠀⠠⣉⣴⣾⣿⣿⣿⣿⣿⣿",
            "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠃⠀⣼⣿⣿⣿⣿⣷⡄⠂⡱⢌⢎⡱⣘⣦⣫⢶⣣⣟⡼⣵⡳⣜⣧⣙⠤⢓⢨⠘⡄⢣⡐⢩⢿⣿⡅⠀⠀⠀⠀⠀⢲⣾⣿⡿⠿⣿⣿⣿⣿⣿",
            "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⢠⣼⣿⣿⡟⠙⣿⡧⢀⠱⣊⠶⣹⢏⣿⣾⣿⣿⣿⣿⣿⣿⣿⣷⣯⣟⣎⢆⠣⡜⡠⠜⣠⢊⢏⡇⠀⠂⠀⠀⣠⣿⡟⠋⣀⣤⣿⣿⣿⣿⣿",
            "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡅⠀⣸⣿⣿⣿⣿⣿⣿⡗⡀⢣⢜⠲⣟⣿⣿⣿⠟⠉⣠⣽⣿⣿⣿⣿⣿⣿⣿⣮⣗⢬⡑⢎⡴⢩⢺⠀⠀⠀⣴⣾⣿⣏⣷⣿⣿⣿⣿⣿⣿⣿⣿",
            "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠙⣿⣦⣌⣻⣿⣿⣿⣿⣿⠇⢐⣻⣎⡕⣫⢿⣿⡏⠀⢀⣽⣿⣿⡿⢻⣿⣿⣿⣿⣿⣿⢦⡙⣎⠶⡙⠸⠀⠀⣼⣿⣿⢋⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿",
            "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣏⠀⠼⣯⣟⣿⣿⣿⣿⡿⠏⠀⢚⡶⡏⣿⣹⣿⣿⠀⠀⢨⣿⣿⣿⣧⣴⣿⣿⣿⠍⣿⣿⠇⠐⠈⠀⠁⠀⠀⢴⣿⣟⣯⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
            "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠐⢊⠫⡙⠋⠭⠩⠀⠀⢀⣬⠷⡏⣷⣟⣻⣿⣇⠠⠀⢿⣿⡿⣿⣿⣿⣿⠏⢀⣸⡿⠁⠀⠀⠀⠀⠀⡼⣘⢳⣬⣷⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
            "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢀⠀⢠⠆⠀⠀⠀⠀⠀⣴⢻⡮⠽⡼⣿⣼⢷⣿⣿⢷⣦⣌⣛⣿⣾⣿⣿⣯⡶⣿⠟⠀⠀⠀⠀⠀⠀⠈⣱⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
            "⣿⣿⣿⣿⣿⣿⡿⣿⣿⣿⣿⣏⠂⢅⡢⠔⠀⠀⢀⠸⣔⡿⣍⢷⠳⠿⣿⡿⣿⢿⣿⣽⣛⣿⢻⣻⣝⣻⣴⡣⠆⠀⠀⠀⠀⠀⠀⢀⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
            "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣾⣿⣟⢸⠾⠁⠀⠀⠀⠤⡙⣌⠻⣌⢎⡱⠛⣵⡑⢎⠣⣍⢛⡛⠷⣛⠻⣩⠉⡁⠀⠀⠀⠀⠀⠀⠀⣰⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
            "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠅⠀⠀⠀⠀⠐⠢⡑⠌⠱⢌⠒⠬⡙⢌⠗⡌⠱⡀⢆⡉⢖⡠⠣⣄⠱⣀⠆⡠⢀⠀⠀⠀⢰⣿⣿⣿⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
            "⣿⣿⣿⣿⣿⣿⣿⣿⡿⣿⣿⠃⠀⠀⠀⠀⠀⠁⠀⠀⠈⠀⠀⠈⠂⠍⢂⡚⠬⣑⠸⢄⡍⠲⣌⡱⢦⣹⠰⡘⡤⢃⡼⠸⢡⣿⣿⣿⣟⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⢿⣿⣿⣿⣿",
            "⣿⣿⣿⣿⣿⣿⣿⣯⡿⣿⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠀⠈⣵⢪⠜⡢⢜⡱⢢⡓⣾⣩⠧⢅⢃⡁⠠⢢⣿⡀⠙⣿⣾⡿⣯⢷⣻⣟⣿⣿⣿⣿⣿⡏⣸⣿⣿⣿⣿",
            "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣼⡍⡞⢱⡎⣴⢣⠙⣮⣽⣮⢠⡌⠑⢢⣾⣿⡟⣶⣶⣭⢻⣭⡟⣷⣯⣿⣿⣿⣿⣿⢱⣿⣿⣿⣿⣿",
            "⣿⣿⣿⣿⣿⣿⣿⣿⣿⠇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣰⢧⡛⣜⢣⢜⠢⢎⡱⠢⠅⠂⡰⠁⠀⣼⣿⣿⣷⣾⣿⣿⣮⣟⣽⣳⢯⣿⣻⣿⣿⣿⣿⣿⣿⣿⣿⣿",
            "⣿⣿⣿⣿⣿⣿⣿⡿⡩⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⠞⡱⢎⡝⣎⢧⢊⡕⢪⠔⠡⠈⠀⠁⠈⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣯⣿⣿⣻⣿⣷⣿⣾⣽⣯⢿⣿⣿⣿",
            "⣿⣿⣿⣿⣿⣿⣟⣂⢀⠄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠄⠂⠉⠁⡊⠑⢪⣼⢚⡬⢣⠜⡱⠈⠀⠀⠀⠀⣸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣾⣿⢯⣿⣿",
            "⣿⣿⣿⣿⣿⣿⣿⣷⢈⢢⡀⠀⠀⠀⠀⠀⠀⠀⠀⡀⠒⠁⠀⠀⠀⠀⠀⠉⠈⢺⣍⡞⡥⢚⠀⠀⠀⠀⠀⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣾",
            "⣿⣿⣿⣿⣿⣿⣿⣿⣯⣷⠵⡤⡕⢀⣠⣤⡴⣊⡈⣀⠀⠀⠀⢀⠀⠀⠀⠀⠈⢡⢜⡷⡍⢆⠀⠀⠀⢀⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
            "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⣏⣿⣵⡿⡿⡿⢿⠹⠵⠊⠒⠻⠾⣶⣄⡀⠂⠹⣟⣧⠂⠀⠀⢠⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
            "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⢎⣿⣿⣿⣿⣿⣛⡯⣥⣂⣀⡄⠀⡈⠉⢿⣄⠈⣿⣞⠀⠀⣰⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
            "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣣⣞⣿⣿⣿⣿⣿⣳⣝⣶⣋⣶⣩⣍⣒⣀⣈⣹⣳⣍⣂⣀⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
            "                                                                 ",
        },
        {
            [[]],
            [[  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
            [[⠀⠀⠀⠀⣠⣶⡾⠏⠉⠙⠳⢦⡀⠀⠀⠀⢠⠞⠉⠙⠲⡀⠀]],
            [[⠀⠀⠀⣴⠿⠏⠀⠀⠀⠀⠀⠀⢳⡀⠀ ⡏⠀⠀⠀⠀⢷ ]],
            [[⠀⠀⢠⣟⣋⡀⢀⣀⣀⡀⠀⣀⡀⣧⠀⢸⠀⠀⠀⠀⠀ ⡇]],
            [[⠀⠀⢸⣯⡭⠁⠸⣛⣟⠆⡴⣻⡲⣿⠀⣸⠀⠀OK⠀ ⡇]],
            [[⠀⠀⣟⣿⡭⠀⠀⠀⠀⠀⢱⠀⠀⣿⠀⢹⠀⠀⠀⠀⠀ ⡇]],
            [[⠀⠀⠙⢿⣯⠄⠀⠀⠀⢀⡀⠀⠀⡿⠀⠀⡇⠀⠀⠀⠀⡼ ]],
            [[⠀⠀⠀⠀⠹⣶⠆⠀⠀⠀⠀⠀⡴⠃⠀⠀⠘⠤⣄⣠⠞⠀ ]],
            [[⠀⠀⠀⠀⠀⢸⣷⡦⢤⡤⢤⣞⣁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
            [[⠀⠀⢀⣤⣴⣿⣏⠁⠀⠀⠸⣏⢯⣷⣖⣦⡀⠀⠀⠀⠀⠀⠀]],
            [[⢀⣾⣽⣿⣿⣿⣿⠛⢲⣶⣾⢉⡷⣿⣿⠵⣿⠀⠀⠀⠀⠀⠀]],
            [[⣼⣿⠍⠉⣿⡭⠉⠙⢺⣇⣼⡏⠀⠀⠀⣄⢸⠀⠀⠀⠀⠀⠀]],
            [[⣿⣿⣧⣀⣿………⣀⣰⣏⣘⣆⣀⠀⠀⢸     ⠀]],
            [[]],
        },
        {
            "                               ",
            " ⣞⢽⢪⢣⢣⢣⢫⡺⡵⣝⡮⣗⢷⢽⢽⢽⣮⡷⡽⣜⣜⢮⢺⣜⢷⢽⢝⡽⣝ ",
            " ⠸⡸⠜⠕⠕⠁⢁⢇⢏⢽⢺⣪⡳⡝⣎⣏⢯⢞⡿⣟⣷⣳⢯⡷⣽⢽⢯⣳⣫ ",
            " ⠀⠀⢀⢀⢄⢬⢪⡪⡎⣆⡈⠚⠜⠕⠇⠗⠝⢕⢯⢫⣞⣯⣿⣻⡽⣏⢗⣗⠏ ",
            " ⠀⠪⡪⡪⣪⢪⢺⢸⢢⢓⢆⢤⢀⠀⠀⠀⠀⠈⢊⢞⡾⣿⡯⣏⢮⠷⠁⠀⠀ ",
            " ⠀⠀⠀⠈⠊⠆⡃⠕⢕⢇⢇⢇⢇⢇⢏⢎⢎⢆⢄⠀⢑⣽⣿⢝⠲⠉⠀⠀⠀ ",
            " ⠀⠀⠀⠀⠀⡿⠂⠠⠀⡇⢇⠕⢈⣀⠀⠁⠡⠣⡣⡫⣂⣿⠯⢪⠰⠂⠀⠀⠀ ",
            " ⠀⠀⠀⠀⡦⡙⡂⢀⢤⢣⠣⡈⣾⡃⠠⠄⠀⡄⢱⣌⣶⢏⢊⠂⠀⠀⠀⠀⠀ ",
            " ⠀⠀⠀⠀⢝⡲⣜⡮⡏⢎⢌⢂⠙⠢⠐⢀⢘⢵⣽⣿⡿⠁⠁⠀⠀⠀⠀⠀⠀ ",
            " ⠀⠀⠀⠀⠨⣺⡺⡕⡕⡱⡑⡆⡕⡅⡕⡜⡼⢽⡻⠏⠀⠀⠀⠀⠀⠀⠀⠀⠀ ",
            " ⠀⠀⠀⠀⣼⣳⣫⣾⣵⣗⡵⡱⡡⢣⢑⢕⢜⢕⡝⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ",
            " ⠀⠀⠀⣴⣿⣾⣿⣿⣿⡿⡽⡑⢌⠪⡢⡣⣣⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ",
            " ⠀⠀⠀⡟⡾⣿⢿⢿⢵⣽⣾⣼⣘⢸⢸⣞⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ",
            " ⠀⠀⠀⠀⠁⠇⠡⠩⡫⢿⣝⡻⡮⣒⢽⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ",
            "                               ",
        },
        {
            " ⣿⣿⣿⣿⣿⣿⣿⣿⡿⠿⠛⠛⠛⠋⠉⠈⠉⠉⠉⠉⠛⠻⢿⣿⣿⣿⣿⣿⣿⣿ ",
            " ⣿⣿⣿⣿⣿⡿⠋⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠛⢿⣿⣿⣿⣿ ",
            " ⣿⣿⣿⣿⡏⣀⠀⠀⠀⠀⠀⠀⠀⣀⣤⣤⣤⣄⡀⠀⠀⠀⠀⠀⠀⠀⠙⢿⣿⣿ ",
            " ⣿⣿⣿⢏⣴⣿⣷⠀⠀⠀⠀⠀⢾⣿⣿⣿⣿⣿⣿⡆⠀⠀⠀⠀⠀⠀⠀⠈⣿⣿ ",
            " ⣿⣿⣟⣾⣿⡟⠁⠀⠀⠀⠀⠀⢀⣾⣿⣿⣿⣿⣿⣷⢢⠀⠀⠀⠀⠀⠀⠀⢸⣿ ",
            " ⣿⣿⣿⣿⣟⠀⡴⠄⠀⠀⠀⠀⠀⠀⠙⠻⣿⣿⣿⣿⣷⣄⠀⠀⠀⠀⠀⠀⠀⣿ ",
            " ⣿⣿⣿⠟⠻⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠶⢴⣿⣿⣿⣿⣿⣧⠀⠀⠀⠀⠀⠀⣿ ",
            " ⣿⣁⡀⠀⠀⢰⢠⣦⠀⠀⠀⠀⠀⠀⠀⠀⢀⣼⣿⣿⣿⣿⣿⡄⠀⣴⣶⣿⡄⣿ ",
            " ⣿⡋⠀⠀⠀⠎⢸⣿⡆⠀⠀⠀⠀⠀⠀⣴⣿⣿⣿⣿⣿⣿⣿⠗⢘⣿⣟⠛⠿⣼ ",
            " ⣿⣿⠋⢀⡌⢰⣿⡿⢿⡀⠀⠀⠀⠀⠀⠙⠿⣿⣿⣿⣿⣿⡇⠀⢸⣿⣿⣧⢀⣼ ",
            " ⣿⣿⣷⢻⠄⠘⠛⠋⠛⠃⠀⠀⠀⠀⠀⢿⣧⠈⠉⠙⠛⠋⠀⠀⠀⣿⣿⣿⣿⣿ ",
            " ⣿⣿⣧⠀⠈⢸⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠟⠀⠀⠀⠀⢀⢃⠀⠀⢸⣿⣿⣿⣿ ",
            " ⣿⣿⡿⠀⠴⢗⣠⣤⣴⡶⠶⠖⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⡸⠀⣿⣿⣿⣿ ",
            " ⣿⣿⣿⡀⢠⣾⣿⠏⠀⠠⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠛⠉⠀⣿⣿⣿⣿ ",
            " ⣿⣿⣿⣧⠈⢹⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣰⣿⣿⣿⣿ ",
            " ⣿⣿⣿⣿⡄⠈⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⣴⣾⣿⣿⣿⣿⣿ ",
            " ⣿⣿⣿⣿⣧⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿ ",
            " ⣿⣿⣿⣿⣷⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿ ",
            " ⣿⣿⣿⣿⣿⣦⣄⣀⣀⣀⣀⠀⠀⠀⠀⠘⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿ ",
            " ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⡄⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿ ",
            " ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⠀⠀⠀⠙⣿⣿⡟⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿ ",
            " ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠇⠀⠁⠀⠀⠹⣿⠃⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿ ",
            " ⣿⣿⣿⣿⣿⣿⣿⣿⡿⠛⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⢐⣿⣿⣿⣿⣿⣿⣿⣿⣿ ",
            " ⣿⣿⣿⣿⠿⠛⠉⠉⠁⠀⢻⣿⡇⠀⠀⠀⠀⠀⠀⢀⠈⣿⣿⡿⠉⠛⠛⠛⠉⠉ ",
            " ⣿⡿⠋⠁⠀⠀⢀⣀⣠⡴⣸⣿⣇⡄⠀⠀⠀⠀⢀⡿⠄⠙⠛⠀⣀⣠⣤⣤⠄⠀ ",
            "                                ",
        },
        {
            " ⠀⠀⢀⣠⠤⠶⠖⠒⠒⠶⠦⠤⣄⠀⠀⠀⣀⡤⠤⠤⠤⠤⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ",
            " ⠀⣴⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠙⣦⠞⠁⠀⠀⠀⠀⠀⠀⠉⠳⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ",
            " ⡾⠁⠀⠀⠀⠀⠀⠀⣀⣀⣀⣀⣀⣀⣘⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⣆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ",
            " ⠀⠀⠀⠀⢀⡴⠚⠉⠁⠀⠀⠀⠀⠈⠉⠙⠲⣄⣤⠤⠶⠒⠒⠲⠦⢤⣜⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ",
            " ⠀⠀⠀⠀⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠳⡄⠀⠀⠀⠀⠀⠀⠀⠉⠳⢄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ",
            " ⠀⠀⠀⠀⠀⠀⠀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⠹⣆⠀⠀⠀⠀⠀⠀⣀⣀⣀⣹⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀ ",
            " ⠀⠀⠀⠀⣠⠞⣉⣡⠤⠴⠿⠗⠳⠶⣬⣙⠓⢦⡈⠙⢿⡀⠀⠀⢀⣼⣿⣿⣿⣿⣿⡿⣷⣤⡀⠀⠀⠀⠀⠀⠀ ",
            " ⠀⠀⠀⣾⣡⠞⣁⣀⣀⣀⣠⣤⣤⣤⣄⣭⣷⣦⣽⣦⡀⢻⡄⠰⢟⣥⣾⣿⣏⣉⡙⠓⢦⣻⠃⠀⠀⠀⠀⠀⠀ ",
            " ⠀⠀⠀⠉⠉⠙⠻⢤⣄⣼⣿⣽⣿⠟⠻⣿⠄⠀⠀⢻⡝⢿⡇⣠⣿⣿⣻⣿⠿⣿⡉⠓⠮⣿⠀⠀⠀⠀⠀⠀⠀ ",
            " ⠀⠀⠀⠀⠀⠀⠙⢦⡈⠛⠿⣾⣿⣶⣾⡿⠀⠀⠀⢀⣳⣘⢻⣇⣿⣿⣽⣿⣶⣾⠃⣀⡴⣿⠀⠀⠀⠀⠀⠀⠀ ",
            " ⠀⠀⠀⠀⠀⠀⠀⠀⠙⠲⠤⢄⣈⣉⣙⣓⣒⣒⣚⣉⣥⠟⠀⢯⣉⡉⠉⠉⠛⢉⣉⣡⡾⠁⠀⠀⠀⠀⠀⠀⠀ ",
            " ⠀⠀⣠⣤⡤⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢈⡿⠋⠀⠀⠀⠀⠈⠻⣍⠉⠀⠺⠿⠋⠙⣦⠀⠀⠀⠀⠀⠀⠀ ",
            " ⠀⣀⣥⣤⠴⠆⠀⠀⠀⠀⠀⠀⠀⣀⣠⠤⠖⠋⠀⠀⠀⠀⠀⠀⠀⠀⠈⠳⠀⠀⠀⠀⠀⢸⣧⠀⠀⠀⠀⠀⠀ ",
            " ⠸⢫⡟⠙⣛⠲⠤⣄⣀⣀⠀⠈⠋⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⠏⣨⠇⠀⠀⠀⠀⠀ ",
            " ⠀⠀⠻⢦⣈⠓⠶⠤⣄⣉⠉⠉⠛⠒⠲⠦⠤⠤⣤⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣠⠴⢋⡴⠋⠀⠀⠀⠀⠀⠀ ",
            " ⠀⠀⠀⠀⠉⠓⠦⣄⡀⠈⠙⠓⠒⠶⠶⠶⠶⠤⣤⣀⣀⣀⣀⣀⣉⣉⣉⣉⣉⣀⣠⠴⠋⣿⠀⠀⠀⠀⠀⠀⠀ ",
            " ⠀⠀⠀⠀⠀⠀⠀⠀⠉⠓⠦⣄⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡼⠁⠀⠀⠀⠀⠀⠀⠀ ",
            " ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠉⠙⠛⠒⠒⠒⠒⠒⠤⠤⠤⠒⠒⠒⠒⠒⠒⠚⢉⡇⠀⠀⠀⠀⠀⠀⠀⠀ ",
            " ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⠴⠚⠛⠳⣤⠞⠁⠀⠀⠀⠀⠀⠀⠀⠀ ",
            " ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣤⠚⠁⠀⠀⠀⠀⠘⠲⣄⡀⠀⠀⠀⠀⠀⠀⠀ ",
            " ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣴⠋⠙⢷⡋⢙⡇⢀⡴⢒⡿⢶⣄⡴⠀⠙⠳⣄⠀⠀⠀⠀⠀ ",
            " ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⢦⡀⠈⠛⢻⠛⢉⡴⣋⡴⠟⠁⠀⠀⠀⠀⠈⢧⡀⠀⠀⠀ ",
            " ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢻⡄⠀⠘⣶⢋⡞⠁⠀⠀⢀⡴⠂⠀⠀⠀⠀⠹⣄⠀⠀ ",
            " ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡇⠀⠀⠈⠻⢦⡀⠀⣰⠏⠀⠀⢀⡴⠃⢀⡄⠙⣆⠀ ",
            " ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⡾⢷⡄⠀⠀⠀⠀⠉⠙⠯⠀⠀⡴⠋⠀⢠⠟⠀⠀⢹⡄ ",
            "                                           ",
        },
        {
            " ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⡶⠟⠛⠉⠙⠻⢿⣤⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ",
            " ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡀⠀⣀⣤⣶⠿⠯⠤⠄⠀⠀⠀⠀⠀⠙⢿⣄⣀⣀⣀⣀⠀⠀⠀⠀⠀⠀ ",
            " ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣸⣿⣛⣻⢯⣅⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⠴⠞⠋⠉⠀⠉⠛⠿⡦⡀⠀⠀⠀ ",
            " ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣴⣿⠭⣍⣉⠛⢾⣝⡂⠀⠀⠀⠀⣠⡴⠋⠁⠀⠀⠀⠀⠀⠀⠀⠀⠙⢿⡆⠀⠀ ",
            " ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣇⠀⣰⣿⣿⣿⣿⡙⢂⣠⠴⠿⠥⣄⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢿⡄⠀ ",
            " ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣴⣿⣏⠳⢿⣿⣿⣿⢛⡇⠋⠡⢒⣒⣒⣒⣛⡛⠦⣤⣀⠀⠀⠀⠀⠀⠀⠀⠘⡷⠀ ",
            " ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣰⡿⣿⠁⠘⠈⠀⠀⣈⡙⠳⠞⣠⡴⠊⠉⢉⣽⣦⣌⠉⠓⠦⣍⠳⡄⠀⠀⠀⠀⠀⠀⢹⠃ ",
            " ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⡇⡇⠀⠀⠀⠀⡤⠞⠛⠓⠀⢧⣙⠲⢤⣾⣿⣽⣿⣿⡷⢤⡈⢧⠹⡄⠀⠀⠀⠀⠀⠀⡇ ",
            " ⠀⠀⠀⠀⠀⣀⣴⠾⠻⢶⣄⠀⠀⠀⠀⢰⣿⣇⠹⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⢿⠓⢦⣌⠙⠛⠛⠛⠓⠒⠛⠒⠷⠇⠀⠀⠀⠀⠀⠀⣿ ",
            " ⠀⡶⠶⠒⠛⣫⣥⡴⠒⠂⢻⣧⠀⠀⠀⣸⣇⠈⢷⡈⠓⠦⣄⡀⠀⠀⠀⠀⠀⠈⣧⠀⠈⠉⠓⠒⠒⠋⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ",
            " ⣿⡇⠀⠀⠀⠀⢀⣇⠠⠤⣾⠻⠿⠶⠶⣿⠛⢦⡀⠉⠳⣄⡀⠉⠙⠲⠤⣄⣀⡀⠈⠓⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡇ ",
            " ⡿⠛⠶⠶⠒⠚⠛⠙⢦⣼⠃⠀⠀⠀⠀⢿⠀⠈⠙⠦⣄⠀⠙⠓⢦⣄⣀⠀⠈⠉⠓⠲⠦⠤⠤⣤⣀⣠⣄⠃⠀⠀⠀⠀⠀⠀⠀⠀⢀⠇ ",
            " ⣿⣄⢀⣀⣠⡤⠤⠤⢾⡏⠀⠀⠀⠀⠀⢸⡇⠀⠀⠀⠈⠙⠲⠦⣤⣀⣈⠉⠛⠒⠶⠦⠤⠤⠤⣤⠄⠉⣻⠆⠀⠀⠀⠀⠀⠀⠀⠀⠸⠀ ",
            " ⣽⡿⠉⠁⠀⠀⠀⢀⣼⠁⠀⠀⠀⠀⠀⠀⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠉⠙⠛⠓⠒⠒⠒⠒⠒⠒⠛⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⣇⠀ ",
            " ⠙⣷⣀⣀⣤⠴⠒⠋⢹⣧⣄⣀⣀⣀⣀⣀⣹⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣸⡏⠀ ",
            " ⠀⠸⣿⡁⠀⠀⣀⣴⠟⠉⠉⠉⠉⠉⠉⠛⢻⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣿⠃⠀ ",
            " ⠀⠀⠙⠛⠛⠛⠛⠁⠀⠀⠀⠀⠀⠀⠀⠀⠘⣿⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣼⠏⠀⠀ ",
            " ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣸⡏⠀⠀⠀ ",
            " ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡿⠁⠀⠀⠀ ",
            " ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣸⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣀⣸⣧⡀⣀⣀⣀ ",
            " ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣰⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠒⠒⠉⠉⠉⠁⠀⠀⠉⠉⠉⠉⠉ ",
            " ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ",
            " ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ",
            " ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ",
            " ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣾⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ",
            "                                                    ",
        },
        {
            "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⠒⢸⠛⠀⠀⠰⣇⠀⠱⠓⢼⣟⠋⠃⠀⠈⠙⠻⣝⢾⢦⠀⠀⠀⠀⠀⠀⠀⠈⠐⠉⠀⠀⠀⠀⠀⠀⠀⠰⠀⠀⠀",
            "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣄⡏⢀⣀⣀⣾⡏⠙⢦⡂⢠⣻⠂⠀⠀⠀⠀⠀⠈⢣⡀⢳⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
            "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⠀⠀⠀⠀⡞⢳⠀⠀⠻⡀⢿⣦⣀⣀⡀⠀⠀⠀⠀⠹⡈⠻⣆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
            "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢀⠀⠀⠀⢠⢿⡾⠧⣤⣀⡇⠀⢹⡇⠀⠉⠉⠛⠦⣄⡀⢱⡄⠸⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠔",
            "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡏⠘⠀⠀⠀⣸⢸⢷⣤⣈⣿⠃⠀⢸⣿⡀⠀⠀⠀⠀⠈⠻⣆⠹⡄⠹⡀⠀⠀⠀⠀⢀⣀⣠⢶⣓⠤⠂⠀⠀⠀⠀⠀",
            "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠃⠀⠀⠀⠸⣿⢠⡈⣿⣿⠁⠀⠀⠀⠹⣧⠀⠀⢰⣶⠀⠀⢸⡆⣻⣤⡗⠀⠀⠀⡴⢋⣥⢞⣋⣁⣀⡀⠀⠀⠀⠀⠀",
            "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⠀⠀⠀⠀⢰⡇⢸⡇⢻⡙⠁⠀⠀⠀⠀⠉⠑⠲⢤⣀⡀⠀⢸⠇⠈⠀⠀⠀⢀⣼⠟⡽⠚⠉⠀⠀⠀⠉⠓⢦⠀⠀⠀",
            "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠀⠀⠀⠀⠀⣸⣧⠀⢳⣀⡧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠿⠤⡄⠀⠀⠀⢰⠋⢰⠋⠀⢰⠆⠀⠀⠀⠀⣠⡶⠀⢀⢀",
            "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠃⡄⠀⠀⠀⢠⣿⣿⣧⡀⠙⢿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠠⠀⠀⠀⡞⠀⠲⠖⡦⠤⠤⣀⣠⠴⠟⠃⣠⠔⠁⡐",
            "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡏⠸⠀⠀⠠⠀⡟⣿⣟⡇⡽⠶⣾⠀⠀⠁⠀⢠⡤⠄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡧⠀⠀⠀⠀⠀⠀⠀⣀⣠⡴⢳⠋⠀⠀⣤",
            "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠇⠀⠀⠀⠀⠐⣻⣿⢿⠁⠃⢀⣿⠀⠀⠀⠀⢸⣿⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⣸⣟⠀⠠⠤⠒⢲⣾⢻⡟⣹⢀⠏⠀⢀⣾⣿",
            "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⠿⣿⣿⠀⠀⠀⠀⠀⢀⣿⣟⣤⣴⡏⠞⣸⠀⠀⠀⠀⠀⣿⡛⠳⢄⡀⠀⠀⠀⠈⠡⠾⠛⠉⠀⠀⠀⠀⣸⠁⣸⢱⢧⡿⠂⣰⣿⣿⣿",
            "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠏⠀⠀⠀⠈⡟⠀⠀⠀⠀⠀⢸⣿⢿⣿⢟⣴⣾⡿⣧⠀⠀⠀⠀⣿⣷⣦⣀⠙⠳⠦⣀⡀⠀⠀⠀⠀⠀⠀⠀⠸⣇⣰⠃⢠⣯⢶⣾⣿⣿⣿⣿",
            "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠀⠀⠀⠀⢰⠇⠀⠀⠀⠀⠀⡼⡧⢠⠈⢻⣿⡟⠀⣹⡄⠀⠀⠀⢹⣿⠿⠿⣿⣦⣤⣀⡉⠛⠓⠦⠤⣤⡤⠀⢀⣽⠃⢠⠟⣿⣿⣿⣿⣿⣿⣿",
            "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢿⠁⠀⠀⠀⠀⡎⠀⠀⠀⠀⠀⠀⡇⣻⡗⠃⠚⣿⣿⠀⡏⢿⡀⠀⠀⠈⢷⣄⠀⠀⠙⠛⠛⠿⣷⣶⣶⡾⠋⠀⠀⡍⢋⡴⠋⣄⣿⣿⣿⣿⣿⣿⣿",
            "⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⡱⠋⠀⠀⠀⠘⣷⠁⠀⠀⠀⠀⡄⠀⡏⠉⠀⠀⠀⢹⣿⠀⣧⠸⣿⡄⠀⠀⠈⢣⡑⠲⢤⣀⠀⠀⢸⣿⠋⠀⠀⢀⣜⣴⠟⢁⣾⣿⣿⣿⣿⣿⣿⣿⣿",
            "⣿⣿⣿⣿⣿⣿⣿⡿⠃⢰⠁⠀⠀⠀⢰⡰⠋⢠⡆⠀⠀⠀⣇⠸⣳⠀⠀⠀⠀⢸⣿⣧⡉⠀⢻⣷⡄⠀⠀⠀⠉⠲⠤⣀⣉⡭⠟⠁⠀⠀⢀⣰⢿⣧⣠⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿",
            "⣿⣿⣿⣿⣿⣿⠏⠀⠀⡏⠀⠀⠀⠀⡾⠀⠀⡞⠀⠀⠀⠀⣿⠀⠃⣀⠀⠀⠀⠀⣿⣿⣷⣄⡈⡾⠿⡄⠀⠀⠘⠢⠤⠀⠀⠀⠀⠀⣀⣴⡿⢃⡾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
            "⣿⣿⣿⣿⣿⣿⠀⠀⣸⠃⠀⠀⠀⠀⠀⠀⠀⠇⠀⠀⠀⣼⣿⠀⠀⣿⠀⠀⠀⢠⣇⠈⢻⣿⣿⣷⣶⣿⣄⠀⠀⠀⠀⠀⠀⢀⣤⣾⣿⢟⣠⣾⣡⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
            "⣿⣿⡿⡛⢯⡟⠀⢠⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⠇⠀⢸⡿⠀⠀⢰⡏⠈⠓⢦⣻⣿⣿⣿⣿⣿⣦⡀⠀⠀⣠⣶⣿⣯⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
            "⣠⣵⡇⢻⣾⠀⢀⡏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⡟⠀⠀⠀⠀⠀⣠⡿⠁⠀⠀⣸⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
            "⣿⣿⣿⣷⣿⠀⠼⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣟⠅⠀⠀⠀⢀⣾⣿⠃⠀⠀⣰⡿⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⣸⠎⡻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
            "⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⢠⠄⠀⠀⠀⠀⠨⡰⠃⠀⠀⠀⣠⣿⠇⠀⠀⢠⣏⠄⣸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣏⣃⠂⠰⢛⣻⣿⣿⣿⣿⣿⣿",
            "⣿⣿⣿⣿⣿⣇⠀⠀⠀⠀⠀⠀⠀⠈⠀⠀⠀⠀⠀⡼⠃⠀⠀⠀⢨⣿⠋⠀⠀⠀⡾⠀⢠⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣍⠽⢦⡨⣍⣮⣽⢽⣿⣿⣿",
            "⠿⢟⣛⠿⣿⣿⠀⠀⠀⠀⠀⣠⡄⠀⠀⠀⠀⠀⠐⠁⠀⠀⠀⢀⡾⠃⠀⠀⠀⣸⡿⢁⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣸⣀⠥⢳⡵⣗⣩⠙⣟",
            "⣷⣎⢿⣾⣤⣿⡇⠀⠀⠀⠸⠟⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⢖⣿⠃⠀⠀⠀⢠⣿⢣⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣶⣟⡫⡽⠖",
            "⣿⣿⡷⣿⣿⣿⣿⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠴⠫⠂⠝⠃⠀⠀⠀⣰⣿⣾⣿⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
            "⣿⣿⣿⢸⣿⣿⣿⣷⠀⠀⠀⠀⠀⠀⠀⠀⣀⢀⠀⠀⠀⠀⠀⠀⠀⢀⡴⠳⣼⣿⢹⣷⣿⣞⣿⣛⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
            "⣿⣿⣿⣿⣿⣿⣿⡿⠀⠀⠀⠀⠀⠀⠀⠈⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣼⣿⣿⣿⣯⣿⣏⣿⣷⣽⣼⣿⣿⣿⣿⣿⣿⢿⣯⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣿⣿⣿",
            "⣿⣿⣿⣿⣿⣿⡿⠁⣾⠃⠀⠀⠀⠀⠀⠀⠀⠀⢀⠀⠀⠀⠀⠀⠀⢀⣾⣿⣿⣿⣿⣿⣿⣿⣿⣾⣿⣿⣿⣿⣿⣿⣿⡿⣷⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
            "⣿⣿⣿⣿⣿⣿⠁⠸⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣰⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣫⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
            "⣿⣿⣿⠏⣾⣿⣧⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
            "⣿⣿⢋⣠⣿⣿⣿⣿⣷⣤⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
            "                                                                 ",
        },
        {
            " ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣠⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣄⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ",
            " ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣤⣶⣾⣿⣿⡿⠟⠛⠛⠛⠛⠛⠻⠿⣿⣿⣿⣿⣿⣷⣶⣤⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ",
            " ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣤⣶⣿⣿⣿⣿⠟⠋⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠛⢿⣿⣿⣿⣿⣿⣿⣶⣤⣄⠀⠀⠀⠀⠀⠀⠀⠀ ",
            " ⠀⠀⠀⠀⠀⠀⠀⠀⣠⣶⣿⣿⣿⣿⣿⠟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠹⣿⣿⣿⣿⣿⣿⣿⣿⣷⡄⠀⠀⠀⠀⠀⠀ ",
            " ⠀⠀⠀⠀⠀⠀⠀⣼⡿⣿⣿⣿⣿⣿⠇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣆⠀⠀⠀⠀⠀ ",
            " ⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀ ",
            " ⠀⠀⠀⠀⠀⠀⠀⢻⣿⡟⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢹⣿⣿⣿⣿⣿⣿⣿⣿⡟⠀⠀⠀⠀⠀ ",
            " ⠀⠀⠀⠀⠀⠀⠀⠘⢿⣼⡟⢻⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⠳⠆⠀⠀⠀⠹⣿⣿⣿⣿⣿⣿⡟⠁⠀⠀⠀⠀⠀ ",
            " ⠀⠀⠀⠀⠀⠀⠀⠀⢈⣻⣷⣾⣿⡇⠀⠀⠀⢀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣀⣀⠀⠀⠀⢻⣿⣿⣿⡿⢋⡀⠀⠀⠀⠀⠀⠀ ",
            " ⠀⠀⠀⠀⠀⠀⠀⠀⣿⠉⠙⢿⣿⡇⠀⠀⠀⠈⢻⣿⣷⣶⣄⣠⠀⠀⠀⣀⣠⣾⣿⣿⡯⠉⠁⠀⠀⠀⢻⣿⣿⡿⠛⢿⡆⠀⠀⠀⠀⠀ ",
            " ⠀⠀⠀⠀⠀⠀⠀⠀⣟⠀⠘⢾⡿⠀⠀⠀⢀⣠⣤⣶⣿⣿⣿⠟⠀⠀⣿⣿⣿⣿⣿⣷⣦⣄⡀⠀⠀⠀⢸⣿⣯⠀⣶⡆⣿⠀⠀⠀⠀⠀ ",
            " ⠀⠀⠀⠀⠀⠀⠀⠀⣿⠈⠀⣼⠃⠀⠀⠘⠋⠁⣈⣹⣿⣿⠏⠀⠀⠀⣿⣿⣏⠀⣈⣁⣈⡝⠻⠿⡆⠀⠰⣿⣏⠈⣿⢷⡟⠀⠀⠀⠀⠀ ",
            " ⠀⠀⠀⠀⠀⠀⠀⠀⣿⠀⠰⡇⠀⠀⠀⠀⠀⠀⠁⠀⠀⠀⠀⠀⠀⠀⢸⣽⣿⣆⠀⠀⠀⠀⠀⠀⠁⠀⢸⣿⣿⡆⣏⣿⠀⠀⠀⠀⠀⠀ ",
            " ⠀⠀⠀⠀⠀⠀⠀⠀⣿⠀⠀⢱⡀⠀⠀⠀⠀⠀⠀⠀⠀⣀⠀⠀⠀⠀⠀⠀⢿⣿⡄⠀⠀⠀⠀⠀⠀⠀⢸⣿⡟⣿⣿⡇⠀⠀⠀⠀⠀⠀ ",
            " ⠀⠀⠀⠀⠀⠀⠀⠀⠙⣄⠀⠀⣸⡄⠀⠀⠀⠀⠀⢀⡞⠁⣤⣤⣀⣠⣤⣀⣄⣸⣿⣦⡀⠀⠀⠀⠀⠀⢸⣿⣄⠟⣼⠀⠀⠀⠀⠀⠀⠀ ",
            " ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠹⠷⠶⠻⡇⠀⠀⠀⠀⠀⠟⠀⠀⠀⠀⠉⠙⠿⠿⣿⠉⢀⡿⣷⡀⢸⣇⢰⠀⠸⣿⣡⡾⠃⠀⠀⠀⠀⠀⠀⠀ ",
            " ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⡇⠀⠀⠀⠀⠀⣀⠀⠀⠀⠀⠐⠛⠀⠀⠁⠀⠀⢰⡟⢷⢸⣿⢀⠀⠀⣿⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀ ",
            " ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⡇⠀⠀⠀⠀⣼⡿⠓⠶⠒⠛⠛⠉⠙⠛⠻⠻⠿⣿⡇⠀⢸⡟⠀⠀⣠⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ",
            " ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢘⡇⠒⠀⠀⠀⠈⠀⠀⠀⠀⠀⣶⠶⠶⠶⠶⠀⢀⣿⠁⢠⡾⠁⠀⣰⣿⠉⢇⠀⠀⠀⠀⠀⠀⠀⠀⠀ ",
            " ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢈⡷⠶⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠁⠀⠿⠃⢀⣴⡟⢹⡄⠘⣧⠀⠀⠀⠀⠀⠀⠀⠀ ",
            " ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⠞⢁⡆⠀⠐⢢⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠀⠒⠀⠀⣠⣴⣿⡟⣰⡿⣡⡄⠈⢣⡀⠀⠀⠀⠀⠀⠀ ",
            " ⠀⠀⠀⠀⠀⣀⣠⡤⠖⠒⠋⠁⠀⠘⣷⠀⠀⠀⠙⠦⣄⣀⣀⣀⣀⣀⣤⣶⣿⣦⣤⣴⣶⣿⡿⢋⣼⠟⢁⣿⠁⣠⣤⡉⠀⠀⠀⠀⠀⠀ ",
            " ⣠⠤⠔⠒⠚⠉⠁⠀⠀⠀⠀⠀⠀⠀⢹⡆⠀⠀⠀⠀⠉⠻⣿⣿⣿⣯⣥⣤⣤⣶⣿⣿⡿⠋⣠⡿⠁⠀⠀⠁⠲⢈⣿⣿⣷⣤⣄⠀⠀⠀ ",
            " ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⢦⡀⠤⡄⠀⠀⠀⠀⠉⡻⢿⣧⣿⣿⡟⢋⣤⡾⠋⠀⠀⠀⠀⠘⠛⢺⣿⣿⣿⣿⣿⣷⣤⣤ ",
            " ⡀⠀⣀⣀⣀⣀⣀⣀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠙⢦⣈⣳⣦⣤⣤⣿⣿⣿⠟⢋⣡⣶⣿⠋⢀⠀⠀⠀⡀⠀⠀⢀⡌⠘⣿⣿⣿⣿⣿⣿⣿ ",
            "                                                    ",
        },
        {
            " ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣀⣀⣀⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ",
            " ⠀⠀⠀⠀⠀⣀⣠⣤⣶⣞⡛⠿⠭⣷⡦⢬⣟⣿⣿⣷⣦⡀⠀⠀⠀⠀⠀⠀⠀⠀ ",
            " ⠀⠀⠀⢠⡾⣯⡙⠳⣍⠳⢍⡙⠲⠤⣍⠓⠦⣝⣮⣉⠻⣿⡄⠀⠀⠀⠀⠀⠀⠀ ",
            " ⠀⠀⠀⡿⢿⣷⣯⣷⣮⣿⣶⣽⠷⠶⠬⠿⠷⠟⠻⠟⠳⠿⢷⡀⠀⠀⠀⠀⠀⠀ ",
            " ⠀⠀⣸⣁⣀⣈⣛⣷⠀⢹⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢧⠀⠀⠀⠀⠀⠀ ",
            " ⠀⣸⣯⣁⣤⣤⣀⠈⢧⠘⣆⢀⣠⠤⣄⠀⠀⠀⠀⠀⠀⠀⠀⠘⡇⠀⠀⠀⠀⠀ ",
            " ⠀⢙⡟⡛⣿⣿⣿⢷⡾⠀⢿⣿⣏⣳⣾⡆⠀⠀⠀⠀⠀⠀⠀⠀⡇⠀⠀⠀⠀⠀ ",
            " ⢀⡞⠸⠀⠉⠉⠁⠀⠀⣠⣼⣿⣿⠀⣽⡇⠀⠀⠀⠀⠀⠀⠀⡼⠁⠀⠀⠀⠀⠀ ",
            " ⣼⡀⣀⡐⢦⢀⣀⠀⣴⣿⣿⡏⢿⣶⣟⣀⣀⣀⣀⣀⣤⣤⠞⠁⠀⠀⠀⠀⠀⠀ ",
            " ⠀⣿⣿⣿⣿⣾⣿⣿⣿⣾⡻⠷⣝⣿⡌⠉⠉⠁⠀⠀⣸⠁⠀⠀⠀⠀⠀⠀⠀⠀ ",
            " ⠀⠈⢻⣿⣿⣿⣿⡟⣿⣟⠻⣿⡿⢿⡇⠀⠀⠀⠀⠀⢹⠀⠀⠀⠀⠀⠀⠀⠀⠀ ",
            " ⠀⢠⣿⢿⣼⣿⣿⠿⣏⣹⡃⢹⣯⡿⠀⠀⠀⠀⠀⠀⠈⢧⠀⠀⠀⠀⠀⠀⠀⠀ ",
            " ⠀⣽⣿⣿⢿⠹⣿⣇⠿⣾⣷⣼⠟⠁⠀⠀⠀⢀⣠⣴⣶⣾⣷⣶⣄⡀⠀⠀⠀⠀ ",
            " ⠀⢿⣾⡟⢺⣧⣏⣿⡷⢻⠅⠀⠀⠀⢀⣠⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣄⡀⠀ ",
            " ⠀⠀⠙⠛⠓⠛⠋⣡⣿⣬⣤⣤⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⠟⠛⠛ ",
            " ⠀⠀⠀⠀⠀⠀⢰⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⠟⠋⠉⠁⠀⠀⠀⠀⠀⠀ ",
            " ⠀⠀⠀⠀⠀⠀⠸⡿⠿⠿⠿⠿⠿⠿⠟⠛⠋⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ",
            "                                ",
        },
        {
            "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
            "⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣴⠟⢛⣉⣉⣙⠛⢷⣦⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣤⡶⠟⢛⠛⠛⠻⢶⣄⠀⠀⠀⠀⠀⠀⠀",
            "⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⠁⢠⠋⠀⠀⠈⠙⣆⠙⣷⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣀⣀⣀⣾⠋⡠⠚⠉⠉⠙⢦⡀⢻⡆⠀⠀⠀⠀⠀⠀",
            "⠀⠀⠀⠀⠀⠀⠀⠀⠀⢿⡄⢸⡀⠀⠀⣀⣀⡼⠶⠞⠛⠛⠋⠉⠙⠛⠛⠶⢶⣤⡀⠀⠀⢀⣠⡶⠛⠉⠉⠉⠉⠉⠻⠺⢧⣀⠀⠀⠀⠀⡇⣾⠇⠀⠀⠀⠀⠀⠀",
            "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠻⣦⣳⣦⡞⠋⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢿⣦⡴⠟⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠻⣦⣀⡼⣱⠟⠀⠀⠀⠀⠀⠀⠀",
            "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⡾⠋⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠻⣧⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⢻⣾⠋⠀⠀⠀⠀⠀⠀⠀⠀",
            "⠀⠀⠀⠀⠀⠀⠀⠀⠀⣰⡟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠹⣿⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⠷⠶⢦⣄⡀⠀⠀⠀⠀",
            "⠀⠀⠀⠀⠀⠀⠀⠀⢠⣟⡀⠀⠀⠀⠀⢀⣀⣀⣀⣀⣀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⣷⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⢿⡄⠀⠀⠀",
            "⠀⠀⠀⠀⠀⠀⣠⡶⠛⠉⠁⠀⡄⠀⠘⠉⠀⠀⠀⠀⠈⠉⠉⠛⠒⠲⠦⢤⣄⣀⡀⠀⠀⠀⠈⢿⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣤⣤⣤⣤⠤⠿⠶⣦⡀",
            "⠀⠀⠀⠀⠀⣼⠏⠀⠀⠀⠀⠀⠀⢠⣀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠉⠛⠒⠲⠾⡧⠤⣤⣀⣀⣀⣀⣠⡤⠴⠖⠛⠉⠁⠀⠀⠀⠀⠀⠈⢢⠘⣷",
            "⠀⠀⠀⠀⣸⡏⠀⠀⠀⠀⠀⠀⠀⠀⠙⠛⠯⣝⡒⠲⢤⣤⣄⣀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⡤⠖⠒⣟",
            "⠀⠀⠀⢀⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⠑⠾⠿⣿⣿⣿⣿⣏⣿⣶⠖⠦⠤⢤⣤⣀⣀⣈⡃⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⣀⣤⠤⠖⠚⠉⠁⣀⡤⢾⡇",
            "⠀⠀⠀⣸⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠉⠉⠙⠛⠛⠲⠶⠶⠤⠤⠤⠴⠾⣓⣒⡒⠒⢲⣾⣿⣿⢿⣿⣭⣿⣿⣇⣤⠴⠶⠟⠋⢁⣸⠇",
            "⠀⠀⠀⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣤⣶⣶⣶⣶⣶⣶⣤⣌⡉⠉⠙⠛⠛⠛⠛⠛⠉⠉⠁⠀⠀⠀⠀⠀⢰⡿⠋⠀",
            "⠀⠀⠀⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢐⣿⣿⣿⣿⣿⣿⣽⣿⣿⣿⣿⣿⣦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⣴⣿⠁⠀⠀",
            "⠀⠀⠀⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⢠⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠁⢀⡿⠀⠀⠀",
            "⠀⠀⠀⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡎⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⡿⠁⠀⠀⠀",
            "⠀⠀⠀⢿⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⠀⠀⠀⠀⠀⠀⠀⢀⣇⣸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⠀⠀⠀⠀⠀",
            "⠀⠀⠀⠈⣷⡀⠀⠀⠀⠀⠀⠀⠀⠀⢰⠋⠉⠉⠉⠉⠉⠉⠉⠉⠉⠀⠀⠉⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⠀⠀⠀⠀⠀",
            "⠀⠀⠀⠀⣼⣷⣀⠀⠀⠀⠀⠀⠀⠀⢸⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⡏⠉⠉⠙⠛⠛⠛⠉⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⡿⠀⠀⠀⠀⠀",
            "⠀⠀⠀⣾⣿⣿⣿⣷⣤⡀⠀⠀⠀⠀⠘⣄⡤⠖⣖⡆⠀⠒⠂⠀⠀⠀⠀⠀⣼⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⠟⠁⠀⠀⠀⠀⠀",
            "⠀⠀⣼⣿⣿⣿⣿⣿⣿⣿⣿⣶⣶⣦⠞⠁⠀⣶⣯⠤⠖⠚⢉⣭⣽⣀⣀⣴⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣀⣤⣴⠾⠋⠁⠀⠀⠀⠀⠀⠀⠀",
            "⠀⣸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠃⠀⠀⠀⠉⠀⠀⣠⣞⡯⠟⠋⢁⣹⣿⣿⣿⣿⣷⣒⣒⣶⣶⣶⣶⣶⣶⣶⣿⣿⣿⣿⡛⢫⣿⣿⣿⣶⣤⣀⡀⠀⠀⠀⠀⠀",
            "⢀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠻⠉⠀⣠⡶⢯⡁⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣼⣿⣿⣿⣿⣿⣿⣿⣶⣄⠀⠀⠀",
            "⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡀⠀⠀⠀⠀⠀⠀⠀⠀⠚⢁⣠⠞⢹⣿⣿⣿⣿⠿⠟⠛⠻⣿⣿⡿⡟⠿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⡄⠀",
            "⣽⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣄⠀⠀⠀⠀⠀⢤⣤⠴⣾⣿⣷⣄⠉⣩⣿⣧⠀⠀⠀⠀⢸⠀⠀⠹⡄⢀⣤⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡄",
            "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣄⠀⠀⠀⣰⠇⠀⠙⠻⣿⣿⣿⣿⣿⣿⣧⡀⠀⠀⠸⠀⣠⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟",
            "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣾⣋⣀⣀⣀⣀⣀⣬⣿⣿⣿⣿⡿⠳⠆⠀⠀⠚⠛⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
            "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣆⡀⠀⢀⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
            "                                                           ",
        }
    }

    return headers[math.random(1, #headers)]
end

function edit_nvim()
    vim.cmd(":e $MYVIMRC")
    vim.cmd(":cd ~/.config/nvim")
    vim.cmd("Neotree toggle<cr>")
end

function randomquote()
    local quote = {
        "Wake up wagie",
        "No Bitches??",
        "No Working??",
        "No Plugins??",
        "I AMMMM GONNA CODEEEEE",
        "We are always watching you..."
    }
    return quote[math.random(1, #quote)]
end