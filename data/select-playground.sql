CREATE TABLE invoices (
    id INT UNSIGNED AUTO_INCREMENT,
    amount INT NOT NULL,
    client VARCHAR(30) NOT NULL,
    created_at DATE NOT NULL,
    due_at DATE NOT NULL,
    paid_at DATE,
    PRIMARY KEY (id)
);

INSERT INTO invoices
    (amount, client, created_at, due_at, paid_at)
VALUES
    (100, 'Fat ce bouque', '2022-02-05', '2022-03-05', '2022-03-05'),
    (120, 'Fat ce bouque', '2022-03-05', '2022-04-05', '2022-04-09'),
    (190, 'Fat ce bouque', '2022-03-15', '2022-04-15', '2022-06-12'),
    (80, 'Fat ce bouque', '2022-04-05', '2022-05-05', NULL),
    (300, 'Fat ce bouque', '2022-06-05', '2022-07-05', NULL),
    (160, 'Gout Gueule', '2022-02-05', '2022-03-05', '2022-03-05'),
    (170, 'Gout Gueule', '2022-01-15', '2022-02-15', NULL)
;

CREATE TABLE cities (
    id INT UNSIGNED AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL ,
    country VARCHAR(50) NOT NULL ,
    continent VARCHAR(30) NOT NULL ,
    PRIMARY KEY (id)
);

INSERT INTO cities (name, country, continent)
VALUES
    ('Paris', 'France', 'Europe'),
    ('Lyon', 'France', 'Europe'),
    ('Besançon', 'France', 'Europe'),
    ('Poitiers', 'France', 'Europe'),
    ('Abbans Dessus', 'France', 'Europe'),
    ('Abbans Dessous', 'France', 'Europe'),
    ('Beaume les Dames', 'France', 'Europe'),
    ('Beaume les Messieurs', 'France', 'Europe'),
    ('Cordoba', 'Espagne', 'Europe'),
    ('Madrid', 'Espagne', 'Europe'),
    ('Sevilla', 'Espagne', 'Europe'),
    ('Cordoba', 'Espagne', 'Europe'),
    ('Santa Cruz de Tenerife', 'Espagne', 'Europe'),
    ('Jaca', 'Espagne', 'Europe'),
    ('Almería', 'Espagne', 'Europe'),
    ('Santander', 'Espagne', 'Europe'),
    ('San Sebastián de los Reyes', 'Espagne', 'Europe'),
    ('Huesca', 'Espagne', 'Europe'),
    ('Dublin', 'Eire', 'Europe'),
    ('Galway', 'Eire', 'Europe'),
    ('Cork', 'Eire', 'Europe'),
    ('Limerick', 'Eire', 'Europe'),
    ('Kilkenny', 'Eire', 'Europe'),
    ('Waterford', 'Eire', 'Europe'),
    ('Muff', 'Eire', 'Europe'),
    ('furbough', 'Eire', 'Europe'),
    ('Edimburgh', 'Ecosse', 'Europe'),
    ('Glasgow', 'Ecosse', 'Europe'),
    ('Inverness', 'Ecosse', 'Europe'),
    ('Stornoway', 'Ecosse', 'Europe'),
    ('Carlisle', 'Angleterre', 'Europe'),
    ('Londres', 'Angleterre', 'Europe'),
    ('Liverpool', 'Angleterre', 'Europe'),
    ('Oxford', 'Angleterre', 'Europe'),
    ('Cambridge', 'Angleterre', 'Europe'),
    ('Manchester', 'Angleterre', 'Europe'),
    ('Bristol', 'Angleterre', 'Europe'),
    ('Saint profond du nowhere', 'Québec', 'Amérique du nord'),
    ('Québec', 'Québec', 'Amérique du nord'),
    ('Montréal', 'Québec', 'Amérique du nord'),
    ('Gaspé', 'Québec', 'Amérique du nord'),
    ('Rivière du Loup', 'Québec', 'Amérique du nord'),
    ('Trois Pistoles', 'Québec', 'Amérique du nord'),
    ('Boston', 'États Unis', 'Amérique du nord'),
    ('Cambridge MA', 'États Unis', 'Amérique du nord'),
    ('New York', 'États Unis', 'Amérique du nord'),
    ('Paris TX', 'États Unis', 'Amérique du nord'),
    ('Washington DC', 'États Unis', 'Amérique du nord'),
    ('Sucre', 'Bolivie', 'Amérique du sud'),
    ('Santa Cruz de la Sierra', 'Bolivie', 'Amérique du sud'),
    ('Santa Ana del Yacuma', 'Bolivie', 'Amérique du sud'),
    ('San José de Chiquitos', 'Bolivie', 'Amérique du sud'),
    ('San Ignacio de Moxos', 'Bolivie', 'Amérique du sud'),
    ('Sao Paulo', 'Brésil', 'Amérique du sud'),
    ('Rio de Janeiro', 'Brésil', 'Amérique du sud'),
    ('Sao Carlos', 'Brésil', 'Amérique du sud'),
    ('Buenos Aires', 'Argentine', 'Amérique du sud'),
    ('Cordoba', 'Argentine', 'Amérique du sud'),
    ('Alger', 'Algérie', 'Afrique du nord'),
    ('Oran', 'Algérie', 'Afrique du nord'),
    ('Constantine', 'Algérie', 'Afrique du nord'),
    ('Tizi Ouzou', 'Algérie', 'Afrique du nord'),
    ('Tunis', 'Tunisie', 'Afrique du nord'),
    ('Médenine', 'Tunisie', 'Afrique du nord'),
    ('Kasserine', 'Tunisie', 'Afrique du nord'),
    ('Sfax', 'Tunisie', 'Afrique du nord'),
    ('Tataouine', 'Tunisie', 'Afrique du nord'),
    ('Casablanca', 'Maroc', 'Afrique du nord'),
    ('Tanger', 'Maroc', 'Afrique du nord'),
    ('Fès', 'Maroc', 'Afrique du nord'),
    ('Marrakech', 'Maroc', 'Afrique du nord'),
    ('Agadir', 'Maroc', 'Afrique du nord'),
    ('Rabat', 'Maroc', 'Afrique du nord')

;


CREATE TABLE books (
    id INT UNSIGNED AUTO_INCREMENT,
    title VARCHAR(50) NOT NULL,
    author VARCHAR(50) NOT NULL,
    published_at DATE NOT NULL,
    publisher VARCHAR(50) NOT NULL,
    genre VARCHAR(50) NOT NULL,
    price DECIMAL(5,2) NOT NULL,
    language VARCHAR(2) NOT NULL DEFAULT 'fr',
    PRIMARY KEY (id)
);

INSERT INTO books
    (title, author, published_at, publisher, genre, price, language)
VALUES
    ('Ramens & nouilles d\'Asie','Marabout', '2023-01-01', 'Marabout', 'cuisine', 4.95, 'fr' ),
    ('L\'aventure commence dans l\'assiette','Alix Noblat', '2023-01-25', 'Hachette', 'cuisine', 19.95, 'fr' ),
    ('Mes recettes veggie', 'Marabout', '2023-08-02', 'Marabout', 'cuisine', 16.80, 'fr'),
    ('Mes recettes healthy sucrées', 'Thibault Geoffray', '2022-09-07', 'Marabout', 'cuisine', 16.90, 'fr'),
    ('La magie du j\'en ai rien à foutre', 'Sarah Knight', '2019-06-05', 'Marabout', 'developpement personnel', 7.90, 'fr'),
    ('Dézingue tes mauvaises habitudes !', 'Jen Sincero', '2021-08-25', 'Marabout', 'developpement personnel', 7.90, 'fr'),
    ('L\'art subtil de s\'en foutre', 'Mark Manson', '2017-06-01', 'Eyrolles', 'developpement personnel', 14.90, 'fr'),
    ('Toujours plus - Ma méthode + = +', 'Lena Situations', '2020-09-24', 'Robert Laffont', 'developpement personnel', 19.50, 'fr'),
    ('Réfléchissez et devenez riche', 'Napoleon Hill', '2011-01-26', 'J\'ai Lu', 'developpement personnel', 7, 'fr'),
    ('Et si j''écoutais avant de parler ?', 'Emmanuel Chila, Marc Bourguignon', '2022-01-06', 'Eyrolles', 'developpement personnel', 16.90, 'fr'),
    ('El Principito', 'Antoine de Saint-Exupéry', '2022-10-13', 'Salamandra Infantil y Juvenil', 'roman jeunesse', 7, 'es'),
    ('Confieso que he vivido', 'Pablo Neruda', '2019-05-23', 'Salamandra Infantil y Juvenil', 'roman jeunesse', 9.70, 'es'),
    ('Poesia completa', 'Federico García Lorca', '2012-11-13', 'Vintage Espagnol', 'poésie', 6, 'es'),
    ('De Amor y de sombra', 'Isabel Allende', '2003-01-01', 'Plaza & Janés S.A', 'roman', 9.80, 'es'),
    ('Violeta', 'Isabel Allende', '2022-01-25', 'Plaza & Janés S.A', 'roman', 9.99, 'es'),
    ('Más allá del invierno', 'Isabel Allende', '2017-06-01', 'Plaza & Janés S.A', 'roman', 6.99, 'es'),
    ('La casa de los espíritus', 'Isabel Allende', '2014-01-03', 'Plaza & Janés S.A', 'roman', 4.99, 'es')

;




