create database mosvlv;

drop SEQUENCE s_path;
drop TABLE path;
CREATE SEQUENCE s_path;
CREATE TABLE path (
    id integer DEFAULT nextval('s_path'::regclass) NOT NULL,
    name character varying(255),
    long float
);


drop SEQUENCE s_points;
drop TABLE points;
CREATE SEQUENCE s_points;
CREATE TABLE points (
    id integer DEFAULT nextval('s_points'::regclass) NOT NULL,
    path_id int,
    name character varying(255),
    km float,
    wiki_url character varying(255),
    geo point
);

select setval('s_path',2,false);
insert into path (id,name,long) values (1,'Москва-Владивосток',9343);
insert into points (name,km) values ('Москва /Московская область/',0);
insert into points (name,km) values ('Москва (МКАД 94 км) /Московская область/',17);
insert into points (name,km) values ('Пироговский /Московская область/',31);
insert into points (name,km) values ('Пушкино /Московская область/',47);
insert into points (name,km) values ('Лесной /Московская область/',57);
insert into points (name,km) values ('М8 х А107 /Московская область/',61);
insert into points (name,km) values ('М8 х А108 /Московская область/',93);
insert into points (name,km) values ('Дворики /Владимирская область/',110);
insert into points (name,km) values ('Переславль-Залесский /Ярославская область/',155);
insert into points (name,km) values ('Ростов /Ярославская область/',220);
insert into points (name,km) values ('Семибратово /Ярославская область/',233);
insert into points (name,km) values ('Коромыслово /Ярославская область/',242);
insert into points (name,km) values ('Кр. Ткачи /Ярославская область/',254);
insert into points (name,km) values ('Карабиха /Ярославская область/',257);
insert into points (name,km) values ('М8 х Р100 /Ярославская область/',265);
insert into points (name,km) values ('Туношна /Ярославская область/',281);
insert into points (name,km) values ('Малые Соли /Ярославская область/',301);
insert into points (name,km) values ('Левашево /Ярославская область/',311);
insert into points (name,km) values ('Кострома /Костромская область/',337);
insert into points (name,km) values ('Судиславль /Костромская область/',387);
insert into points (name,km) values ('Кадый /Костромская область/',476);
insert into points (name,km) values ('Макарьев /Костромская область/',515);
insert into points (name,km) values ('Мантурово /Костромская область/',594);
insert into points (name,km) values ('Знаменка /Костромская область/',606);
insert into points (name,km) values ('Шарья /Костромская область/',661);
insert into points (name,km) values ('Поназырево /Костромская область/',709);
insert into points (name,km) values ('Свеча /Кировская область/',788);
insert into points (name,km) values ('Котельнич /Кировская область/',828);
insert into points (name,km) values ('Орлов /Кировская область/',875);
insert into points (name,km) values ('Верхняя Торца /Кировская область/',920);
insert into points (name,km) values ('Коминтерновский /Кировская область/',942);
insert into points (name,km) values ('Слободской /Кировская область/',972);
insert into points (name,km) values ('Белая Холуница /Кировская область/',1011);
insert into points (name,km) values ('Климковка /Кировская область/',1045);
insert into points (name,km) values ('Черная Холуница /Кировская область/',1073);
insert into points (name,km) values ('Омутнинск /Кировская область/',1110);
insert into points (name,km) values ('Афанасьево /Кировская область/',1183);
insert into points (name,km) values ('Сива /Пермский край/',1285);
insert into points (name,km) values ('Карагай /Пермский край/',1336);
insert into points (name,km) values ('Р242 х Р344 /Пермский край/',1374);
insert into points (name,km) values ('Пермь /Пермский край/',1450);
insert into points (name,km) values ('Р242 х (Нестюковский тракт) /Пермский край/',1462);
insert into points (name,km) values ('Лобаново /Пермский край/',1466);
insert into points (name,km) values ('Кояново /Пермский край/',1477);
insert into points (name,km) values ('Бершеть /Пермский край/',1485);
insert into points (name,km) values ('Кукуштан /Пермский край/',1499);
insert into points (name,km) values ('Ергач /Пермский край/',1523);
insert into points (name,km) values ('Малая Шадейка /Пермский край/',1530);
insert into points (name,km) values ('Р242 х (Полевая) /Пермский край/',1537);
insert into points (name,km) values ('Голдыревский /Пермский край/',1557);
insert into points (name,km) values ('Р242 х (Суксун) /Пермский край/',1583);
insert into points (name,km) values ('Киселево /Пермский край/',1587);
insert into points (name,km) values ('Ачит /Свердловская область/',1639);
insert into points (name,km) values ('Дружинино /Свердловская область/',1749);
insert into points (name,km) values ('Билимбай /Свердловская область/',1774);
insert into points (name,km) values ('Первоуральск /Свердловская область/',1787);
insert into points (name,km) values ('Екатеринбург /Свердловская область/',1835);
insert into points (name,km) values ('Р351 х Р354 /Свердловская область/',1870);
insert into points (name,km) values ('Белоярский /Свердловская область/',1893);
insert into points (name,km) values ('Богданович /Свердловская область/',1933);
insert into points (name,km) values ('Камышлов /Свердловская область/',1974);
insert into points (name,km) values ('Пышма /Свердловская область/',2012);
insert into points (name,km) values ('Тугулым /Свердловская область/',2100);
insert into points (name,km) values ('Тюмень /Тюменская область/',2163);
insert into points (name,km) values ('Ялуторовск /Тюменская область/',2238);
insert into points (name,km) values ('Заводоуковск /Тюменская область/',2259);
insert into points (name,km) values ('Омутинский /Тюменская область/',2333);
insert into points (name,km) values ('Голышманово (Развилка) /Тюменская область/',2373);
insert into points (name,km) values ('Опеновка /Тюменская область/',2429);
insert into points (name,km) values ('Тушнолобово /Тюменская область/',2493);
insert into points (name,km) values ('Абатское /Тюменская область/',2513);
insert into points (name,km) values ('Яман /Омская область/',2591);
insert into points (name,km) values ('Тюкалинск /Омская область/',2649);
insert into points (name,km) values ('Красный Яр /Омская область/',2747);
insert into points (name,km) values ('Омск /Омская область/',2795);
insert into points (name,km) values ('Кормиловка /Омская область/',2845);
insert into points (name,km) values ('Калачинск /Омская область/',2881);
insert into points (name,km) values ('Татарск /Новосибирская область/',2979);
insert into points (name,km) values ('Барабинск /Новосибирская область/',3131);
insert into points (name,km) values ('Убинское /Новосибирская область/',3223);
insert into points (name,km) values ('Каргат /Новосибирская область/',3271);
insert into points (name,km) values ('Чулым /Новосибирская область/',3317);
insert into points (name,km) values ('Коченево /Новосибирская область/',3401);
insert into points (name,km) values ('Обь /Новосибирская область/',3446);
insert into points (name,km) values ('Новосибирск /Новосибирская область/',3463);
insert into points (name,km) values ('Мошково /Новосибирская область/',3525);
insert into points (name,km) values ('Болотное /Новосибирская область/',3598);
insert into points (name,km) values ('Кемерово /Кемеровская область/',3722);
insert into points (name,km) values ('Успенка /Кемеровская область/',3772);
insert into points (name,km) values ('Красный Яр /Кемеровская область/',3813);
insert into points (name,km) values ('Верх-Чебула /Кемеровская область/',3863);
insert into points (name,km) values ('Мариинск /Кемеровская область/',3885);
insert into points (name,km) values ('Суслово /Кемеровская область/',3916);
insert into points (name,km) values ('Итатский /Красноярский край/',3974);
insert into points (name,km) values ('Боготол (1) /Красноярский край/',4009);
insert into points (name,km) values ('Ачинск /Красноярский край/',4072);
insert into points (name,km) values ('Козулька /Красноярский край/',4136);
insert into points (name,km) values ('Емельяново /Красноярский край/',4222);
insert into points (name,km) values ('Красноярск /Красноярский край/',4248);
insert into points (name,km) values ('Березовка /Красноярский край/',4268);
insert into points (name,km) values ('Кускун /Красноярский край/',4304);
insert into points (name,km) values ('Балай /Красноярский край/',4334);
insert into points (name,km) values ('Рыбное /Красноярский край/',4387);
insert into points (name,km) values ('Большие Ключи /Красноярский край/',4429);
insert into points (name,km) values ('Канск /Красноярский край/',4478);
insert into points (name,km) values ('Иланский /Красноярский край/',4500);
insert into points (name,km) values ('Нижний Ингаш /Красноярский край/',4528);
insert into points (name,km) values ('Тинской /Красноярский край/',4553);
insert into points (name,km) values ('Нижняя Пойма /Красноярский край/',4578);
insert into points (name,km) values ('Тайшет /Иркутская область/',4644);
insert into points (name,km) values ('Алзамай /Иркутская область/',4711);
insert into points (name,km) values ('Нижнеудинск /Иркутская область/',4801);
insert into points (name,km) values ('Тулун /Иркутская область/',4924);
insert into points (name,km) values ('Куйтун /Иркутская область/',4994);
insert into points (name,km) values ('Зима /Иркутская область/',5057);
insert into points (name,km) values ('Залари /Иркутская область/',5111);
insert into points (name,km) values ('Владимир /Иркутская область/',5127);
insert into points (name,km) values ('Кутулик /Усть-Ордынский Бурятский авт./',5142);
insert into points (name,km) values ('Черемхово /Иркутская область/',5172);
insert into points (name,km) values ('Усолье-Сибирское /Иркутская область/',5240);
insert into points (name,km) values ('Ангарск /Иркутская область/',5269);
insert into points (name,km) values ('Иркутск /Иркутская область/',5313);
insert into points (name,km) values ('Байкальск /Иркутская область/',5463);
insert into points (name,km) values ('Бабушкин /Бурятия республика/',5593);
insert into points (name,km) values ('Селенгинск /Бурятия республика/',5677);
insert into points (name,km) values ('Татаурово /Бурятия республика/',5726);
insert into points (name,km) values ('Улан-Удэ /Бурятия республика/',5766);
insert into points (name,km) values ('Мухоршибирь /Бурятия республика/',5886);
insert into points (name,km) values ('Петровск-Забайкальский /Забайкальский край/',5972);
insert into points (name,km) values ('Хохотуй /Забайкальский край/',6032);
insert into points (name,km) values ('Хилок /Забайкальский край/',6113);
insert into points (name,km) values ('Улеты /Забайкальский край/',6323);
insert into points (name,km) values ('Чернышевск /Забайкальский край/',6743);
insert into points (name,km) values ('Амазар /Забайкальский край/',7113);
insert into points (name,km) values ('Сковородино /Амурская область/',7363);
insert into points (name,km) values ('Магдагачи /Амурская область/',7543);
insert into points (name,km) values ('Шимановск /Амурская область/',7783);
insert into points (name,km) values ('Белогорск /Амурская область/',7936);
insert into points (name,km) values ('Бурея /Амурская область/',8123);
insert into points (name,km) values ('Новобурейский /Амурская область/',8128);
insert into points (name,km) values ('Облучье /Еврейская авт. область/',8261);
insert into points (name,km) values ('Хабаровск /Хабаровский край/',8611);
insert into points (name,km) values ('Хор /Хабаровский край/',8693);
insert into points (name,km) values ('Вяземский /Хабаровский край/',8738);
insert into points (name,km) values ('Лермонтовка /Хабаровский край/',8796);
insert into points (name,km) values ('Бикин /Приморский край/',8836);
insert into points (name,km) values ('Лучегорск /Приморский край/',8885);
insert into points (name,km) values ('Дальнереченск /Приморский край/',8935);
insert into points (name,km) values ('Горные Ключи /Приморский край/',9020);
insert into points (name,km) values ('Кировский /Приморский край/',9037);
insert into points (name,km) values ('Хвалынка /Приморский край/',9100);
insert into points (name,km) values ('Спасск-Дальний /Приморский край/',9115);
insert into points (name,km) values ('Черниговка /Приморский край/',9153);
insert into points (name,km) values ('Уссурийск /Приморский край/',9239);
insert into points (name,km) values ('Раздольное /Приморский край/',9279);
insert into points (name,km) values ('Угловое /Приморский край/',9315);
insert into points (name,km) values ('Владивосток /Приморский край/',9343);    


drop SEQUENCE s_users;
drop TABLE users;
CREATE SEQUENCE s_users;
CREATE TABLE users (
    id integer DEFAULT nextval('s_users'::regclass) NOT NULL,
    email character varying(255),
    hash text
);
