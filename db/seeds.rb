# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Motorcycle.create([
    {name:"Hyabusa",image:"https://res.cloudinary.com/dyms6bxn7/image/upload/v1658411193/Motohub/main_page/01_hyabusa_fzujdj.png",specification:" Famed for its abundant power, agility and majestic presence.
    Legendary for establishing levels of ultimate sport performance and
    retaining its position atop the class it created for over two
    decades. The latest generation provides even smoother power
    delivery, nimbler handling, and a collection of electronic assist
    systems that make the Hayabusa more controllable, predictable and
    reliable. And all this wrapped in a package with breathtaking style
    and grace.",price:19400},

    {name:"SuperVeloce S",image:"https://res.cloudinary.com/dyms6bxn7/image/upload/v1658411193/Motohub/main_page/02_supervelocity_gv5wef.png",specification:" The new MV Superveloce S takes attention to detail to the extreme.
    The new Surreal White exterior highlights the timeless lines, which
    were designed in a wind tunnel. The spoke wheels are an elegant
    tribute to the bikes of the past, but with the efficiency and weight
    of a modern wheel.",price:56500},
    
    {name:"F3",image:"https://res.cloudinary.com/dyms6bxn7/image/upload/v1658411208/Motohub/main_page/03_f3_e10jxv.png",specification:"The Panigale V4 MY23 represents the last step in the characteristic path of Borgo Panigale's sports bikes. As is the case with motorcycles engaged in MotoGP and WorldSBK, the Panigale V4 is updated and improved year after year, and the 2022 version represents the most significant evolution since its launch year. For MY2023, a series of electronic improvements have been introduced that make the bike even easier and more intuitive for riders of all levels. ",price:29995},
    
    {name:"YFZ-R1",image:"https://res.cloudinary.com/dyms6bxn7/image/upload/v1658411193/Motohub/main_page/04_r1_gfl6ai.png",specification:" R HISTORY. YOUR FUTURE. WE R1. Featuring next‑generation R‑Series
    styling, sophisticated electronic control, supersport braking and
    suspension performance and a high‑performance crossplane engine.",price:17599},

    {name:"Dragster RR SCS",image:"https://res.cloudinary.com/dyms6bxn7/image/upload/v1658411194/Motohub/main_page/05_drag_takkok.png",specification:" Inimitable, with a unique personality. The curves of the fuel tank
    and headlight, the bobbed tail and the elegant spoke wheels superbly
    frame the three-cylinder engine at the heart of the Dragster. Ready
    for action, bursting with exuberance and power. ",price:29995},

    {name:"FIREBLADE CBR 1000RR-R",image:"https://res.cloudinary.com/dyms6bxn7/image/upload/v1658411204/Motohub/main_page/06_cbr_pp9mhp.png",specification:"Introduced in 1992, Honda’s iconic Fireblade took the world by storm, evolving into an incredible 1000cc machine while creating a legacy both on the track and off it. The motorcycle was also a blueprint for many competitive racing machines, and has even left a mark on The Isle of Man TT.
    The legend of Fireblade has evolved to grow bigger with time, and in 2020 we are here with two new variants created along with Honda Racing Corporation. The CBR1000RR-R Fireblade and CBR1000RR-R Fireblade SP are worthy of furthering the legacy of the original Fireblade.",price:28900},
        
    {name:"KTM 1290 SUPER DUKE R EVO",image:"https://res.cloudinary.com/dyms6bxn7/image/upload/v1658411195/Motohub/main_page/07_1290r_nlhmi5.png",specification:"Evolution and adaption are critical when it comes to maintaining one's status as the top dog. The KTM 1290 SUPER DUKE R EVO is a BEAST - evolved. Boasting intuitive Semi-Active Suspension Technology (SAT), this BEAST not only adapts to the road surface but also to the rider's inputs - making it a cold, calculated hunter.",price:19400},
    
    {name:"Rush 1000",image:"https://res.cloudinary.com/dyms6bxn7/image/upload/v1658411195/Motohub/main_page/08_rush_alhaqt.png",specification:"The design choices highlight the uniqueness of the idea behind the
    Rush, a bike meant for those who are not afraid to stand-out of the
    crowd with out-of-the-ordinary details, such as she lenticular
    rear-wheel, typical of acceleration races.",price:29995},

    {name:"Panigale V4S",image:"https://res.cloudinary.com/dyms6bxn7/image/upload/v1658411194/Motohub/main_page/09_panigale_dcvj4r.png",specification:"The Panigale V4 MY23 represents the last step in the characteristic path of Borgo Panigale's sports bikes. As is the case with motorcycles engaged in MotoGP and WorldSBK, the Panigale V4 is updated and improved year after year, and the 2022 version represents the most significant evolution since its launch year. For MY2023, a series of electronic improvements have been introduced that make the bike even easier and more intuitive for riders of all levels. ",price:29995},
    
    
    {name:"NINJA H2R",image:"https://res.cloudinary.com/dyms6bxn7/image/upload/v1658411194/Motohub/main_page/10_h2r_aiqhus.png",specification:"The development of the Ninja H2®R motorcycle goes beyond the boundaries of any other Kawasaki motorcycle. Born through the unprecedented collaboration between multiple divisions within the Kawasaki Heavy Industries, Ltd. (KHI) organization, the world's only limited production supercharged hypersport model represents the unbridled pinnacle of Kawasaki engineering, with astonishing acceleration and mind-bending top speed suitable only for the track.",price:56500},
    
    
])

User.create(full_name: "Roshan", email: "ros@gmail.com", password: 'Password1')    
User.create(full_name: "Vignash", email: "vignas@gmail.com", password: 'Password1')
User.create(full_name: "David", email: "david@gmail.com", password: 'Password1')   
User.create(full_name: "Alick", email: "alick@gmail.com", password: 'Password1')  

Reservation.create(user_id: 1, motorcycle_id: 1, city: "london",date: 2022-01-10)
Reservation.create(user_id: 2, motorcycle_id: 2, city: "Kathmandu",date: 2022-02-15)
Reservation.create(user_id: 3, motorcycle_id: 3, city: "Delhi",date: 2022-03-17)
Reservation.create(user_id: 4, motorcycle_id: 4, city: "paris", date: 2022-04-20)