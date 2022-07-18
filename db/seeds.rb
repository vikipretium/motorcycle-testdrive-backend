# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Motorcycle.create([{name:"KTM 1290 SUPER DUKE R EVO",image:"https://azwecdnepstoragewebsiteuploads.azureedge.net/PHO_BIKE_90_LI_1290-sdr-evo-22-bl-90li_%23SALL_%23AEPI_%23V1.png",specification:"Evolution and adaption are critical when it comes to maintaining one's status as the top dog. The KTM 1290 SUPER DUKE R EVO is a BEAST - evolved. Boasting intuitive Semi-Active Suspension Technology (SAT), this BEAST not only adapts to the road surface but also to the rider's inputs - making it a cold, calculated hunter.",price:19400},
    {name:"NINJA H2R",image:"https://www.team-bhp.com/forum/attachments/superbikes-imports/2165012d1623064622-2021-kawasaki-ninja-h2r-priced-rs-79-90-lakh-2.jpg",specification:"The development of the Ninja H2®R motorcycle goes beyond the boundaries of any other Kawasaki motorcycle. Born through the unprecedented collaboration between multiple divisions within the Kawasaki Heavy Industries, Ltd. (KHI) organization, the world's only limited production supercharged hypersport model represents the unbridled pinnacle of Kawasaki engineering, with astonishing acceleration and mind-bending top speed suitable only for the track.",price:56500},
    {name:"Panigale V4",image:"https://images.ctfassets.net/x7j9qwvpvr5s/5kftwTYZ6bPZesj9O54niR/af6766ea486c4180ec7ad5e3aac8c015/Panigale-V4-S-MY22-Model-Preview-1050x650-V06.png",specification:"The Panigale V4 MY23 represents the last step in the characteristic path of Borgo Panigale's sports bikes. As is the case with motorcycles engaged in MotoGP and WorldSBK, the Panigale V4 is updated and improved year after year, and the 2022 version represents the most significant evolution since its launch year. For MY2023, a series of electronic improvements have been introduced that make the bike even easier and more intuitive for riders of all levels. ",price:29995},
    {name:"Yamaha R1",image:"https://dd5394a0b8ca8e97ba29-abf76f3d91a2125517d6c7c409f095c7.ssl.cf1.rackcdn.com/content/common/files/motorcycle/vr/2022-yfzr1/22r1Blue-1200-01.jpg",specification:"R HISTORY. YOUR FUTURE. WE R1.
        Featuring next‑generation R‑Series styling, sophisticated electronic control, supersport braking and suspension performance and a high‑performance crossplane engine.",price:17599},
    {name:"CBR FIREBLADE",image:"https://www.hondabigwing.in/Content/images/cbr1000rr/colors/GRAND-PRIX-RED-(STANDARD).png",specification:"Introduced in 1992, Honda’s iconic Fireblade took the world by storm, evolving into an incredible 1000cc machine while creating a legacy both on the track and off it. The motorcycle was also a blueprint for many competitive racing machines, and has even left a mark on The Isle of Man TT.

        The legend of Fireblade has evolved to grow bigger with time, and in 2020 we are here with two new variants created along with Honda Racing Corporation. The CBR1000RR-R Fireblade and CBR1000RR-R Fireblade SP are worthy of furthering the legacy of the original Fireblade.",price:28900}])

User.create(first_name: "Roshan", last_name: "Bajgain", email: "ros@gmail.com", number: 9842700880)    
User.create(first_name: "Vignash", last_name: "singh", email: "vignas@gmail.com", number: 9842700880)   
User.create(first_name: "David", last_name: "ouma", email: "david@gmail.com", number: 9842700880)   
User.create(first_name: "Alick", last_name: "Nyirenda", email: "alick@gmail.com", number: 9842700880)  

Reservation.create(user_id: 1, motorcycle_id: 1, city: "london")
Reservation.create(user_id: 2, motorcycle_id: 2, city: "Kathmandu")
Reservation.create(user_id: 3, motorcycle_id: 3, city: "Delhi")
Reservation.create(user_id: 4, motorcycle_id: 4, city: "paris")