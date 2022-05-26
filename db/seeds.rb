# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"
Review.destroy_all
UserCourse.destroy_all
Quiz.destroy_all
Section.destroy_all
Course.destroy_all
User.destroy_all

User.create(email: "felipe.lisperguer@gmail.com", first_name: "Felipe", last_name: "Lisperguer", address: "Siempreviva 123", age: "27", school: "Santa Maria", password: "123456", password_confirmation: "123456")
User.create(email: "flo.lema222@gmail.com", first_name: "Florencia", last_name: "Lema", address: "Calle Falsa 123", age: "58", school: "Santa Catalina", password: "123456", password_confirmation: "123456")

curso0 = Course.create(titulo: "Educación Sexual", duracion: 10, detalle: "La educación sexual es muy importante, ya que esta proporciona la información y las herramientas necesarias para disfrutar del sexo de manera responsable y saludable")
curso1 = Course.create(titulo: "Educación Financiera", duracion: 20, detalle: "La educación financiera es el proceso mediante el cual los individuos adquieren una mejor comprensión de los conceptos y productos financieros, desarrollan las habilidades necesarias para tomar decisiones  informadas, evaluar riesgos y oportunidades financieras")
curso2 = Course.create(titulo: "Nutrición", duracion: 15, detalle: "La educación nutricional se refiere a la difusión de información útil acerca de los alimentos y sus nutrientes, pero su función no se reduce a ello, sino también a ofrecer las herramientas necesarias para mejorar los hábitos de alimentación y en consecuencia los procesos de nutrición.")
curso3 = Course.create(titulo: "Nuevas Tecnologias", duracion: 35, detalle: "Las 'nuevas tecnologías' son aquellas corrientes tecnológicas que están marcando un cambio en el modelo industrial y social en la economía global. En otras palabras, consiste en un conjunto de tecnologías de temprana creación o desarrollo que forman parte de la denominada 'revolución digital'.")
curso4 = Course.create(titulo: "Lógica", duracion: 50, detalle: "La mayoría de las personas pensamos que la lógica sólo se trata de números para realizar operaciones como sumas, restas, multiplicaciones, fracciones, etc. Sin embargo, sus funciones están directamente relacionadas con nuestras actividades diarias.")
curso5 = Course.create(titulo: "Electricidad", duracion: 30, detalle: "El estudiante podra ver temas realcionados con los principios de la electricidad llegando a temas como instalaciones electricas domiciliarias a seguridad en instalaciones, uso de dispositivos electronicos y linea blanca.")
curso6 = Course.create(titulo: "Primeros Auxilios", duracion: 25, detalle: "Los accidentes son cosas que pueden para en cualquier momento. Es importante saber cuándo llamar al 911. Mientras espera la ayuda de emergencia, usted puede salvar la vida de alguien. La resucitación cardiopulmonar (RCP) es para las personas cuyo corazón o cuya respiración se detienen y la maniobra de Heimlich es para las personas que se atragantan..")
curso7 = Course.create(titulo: "Defensa Personal", duracion: 30, detalle: "Defensa propia, individual o colectiva, Cuando una persona se protege a sí misma de algún tipo de ataque, se dice que practica una forma de autodefensa..")
curso8 = Course.create(titulo: "Medio Ambiente", duracion: 40, detalle: "Te explicamos qué es el medio ambiente y qué elementos lo componen. Además, las causas de su contaminación y cómo protegerlo.")
curso9 = Course.create(titulo: "Política y Gobierno", duracion: 60, detalle: "El ser humano que por naturaleza es un ser social, en el afán de satisfacer sus necesidades origina diversos grupos sociales que conforman la sociedad; el Estado como grupo surge de la sociedad y es el objeto especial del estudio de la política, otro grupo no menos importante es el gobierno.")

url0 = "https://res.cloudinary.com/dydeg1evr/image/upload/v1653575043/development/pngwing.com_iaacqd.png"
curso0.photo.attach(io: URI.open(url0), filename: "pngwing.com_iaacqd.png", content_type: "image/png")
curso0.save

url1 = "https://res.cloudinary.com/dydeg1evr/image/upload/v1653573329/development/finanzas_mff8nz.png"
curso1.photo.attach(io: URI.open(url1), filename: "finanzas_mff8nz.png", content_type: "image/png")
curso1.save
url2 = "https://res.cloudinary.com/dydeg1evr/image/upload/v1653574299/development/pngegg_1_z0zsgz.png"
curso2.photo.attach(io: URI.open(url2), filename: "pngegg_1_z0zsgz.png", content_type: "image/png")
curso2.save
url3 = "https://res.cloudinary.com/dydeg1evr/image/upload/v1653578265/development/pngegg_4_ort9ge.png"
curso3.photo.attach(io: URI.open(url3), filename: "pngegg_4_ort9ge.png", content_type: "image/png")
curso3.save
url4 = "https://res.cloudinary.com/dydeg1evr/image/upload/v1653576111/development/logica_tmi1rf.png"
curso4.photo.attach(io: URI.open(url4), filename: "logica_tmi1rf.png", content_type: "image/png")
curso4.save

url5 = "https://res.cloudinary.com/dydeg1evr/image/upload/v1653576198/development/electricidad_k7ahoo.png"
curso5.photo.attach(io: URI.open(url5), filename: "electricidad_k7ahoo.png", content_type: "image/png")
curso5.save

url6 = "https://res.cloudinary.com/dydeg1evr/image/upload/v1653576277/development/auxilios_caltdz.png"
curso6.photo.attach(io: URI.open(url6), filename: "auxilios_caltdz.png", content_type: "image/png")
curso6.save

url7 = "https://res.cloudinary.com/dydeg1evr/image/upload/v1653576592/development/defensa_a2ifg7.png"
curso7.photo.attach(io: URI.open(url7), filename: "defensa_a2ifg7.png", content_type: "image/png")
curso7.save

url8 = "https://res.cloudinary.com/dydeg1evr/image/upload/v1653576712/development/ambiente_jerurh.png"
curso8.photo.attach(io: URI.open(url8), filename: "ambiente_jerurh.png", content_type: "image/png")
curso8.save

url9 = "https://res.cloudinary.com/dydeg1evr/image/upload/v1653576863/development/politica_wscld4.png"
curso9.photo.attach(io: URI.open(url9), filename: "politica_wscld4.png", content_type: "image/png")
curso9.save

url_section_1 = "https://www.youtube.com/embed/F6rruydac9I"
url_section_2 = "https://www.youtube.com/embed/ALlSherR2ss"

section_1 = Section.create(nombre: "Modulo 1", descripcion: "Educación Financiera: 'La Inversión'", url_cloudinary: url_section_1, course: curso1)
section_2 = Section.create(nombre: "Modulo 2", descripcion: "Educación Financiera: 'Calidad de Vida y Educación Financiera'", url_cloudinary: url_section_2, course: curso1)

# section_1.video.attach(io: URI.open(url_section_1), filename: 'raymeVideo.mp4', content_type: 'video/mp4'))
# section_1.save

# Modulo 1
quiz_1 = Quiz.create(nombre: "Quiz Modulo 1", section: section_1, preguntas:"¿Qué es una inversión?; ¿Qué hay que tener en cuenta la hora de invertir?; ¿Cuál es la primera mejor inversión?", respuestas: "Destinar una parte del ingreso con el propósito de aumentar el monto inicial, Destinar todo mi salario a un proyecto nuevo, Endeudarme para aumentar mi monto inicial a futuro; Rendimiento - Riesgo - Plazo,  Rendimiento - Recaudación - Plazo, Recaudación - Plazo - Riesgo; Inmuebles, Acciones, El estudio")
# Modulo 2
quiz_2 = Quiz.create(nombre: "Quiz Modulo 2", section: section_2, preguntas:"¿Qué no hay que sobrepasar para tener una buena calidad de vida?; ¿Qué implica ser un consumidor responsable?; ¿Cuál de estas opciones NO esta relacionada con ?", respuestas: "El nivel de endeudamiento, El salario, La hipoteca; Estudiar el mercado antes de consumir, Consumir y después analizar, Consumir todos mis ingresos; Optimizar el presupuesto, Analizar la información de los productos o servicios, Comprar lo que me dicen las pautas publicitarias")
