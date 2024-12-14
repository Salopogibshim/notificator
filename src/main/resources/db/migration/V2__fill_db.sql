insert into "user" (id, first_name, last_name, sur_name, status)
values ('1','Иванов','Иван','Иванович','USER'),
       ('2','Петров','Петр','Петрович','SUPPORT'),
       ('3','Сидоров','Сидор','Сидорович','USER'),
       ('4','Тестов','Тест','Тестович','SUPPORT');

insert into filter (id, user_id, types_ids)
values ('1','2','{1, 3, 5}'),
       ('2','3','{}');

insert into notificator (id, filter_id, author_id, title, message, created_at, status)
values ('1','1','1','Мало средств на карте','Казна пустеет пополните ее',now(),'UNREAD'),
       ('2','1','2','Задолжность не погашена','Вам начислят завтра пени',now(),'UNREAD'),
       ('3','2','3','Новое предложение','МММ снова в моде',now(),'UNREAD'),
       ('5','2','4','Супер выгодный микрозайм','Возьмешь ты, а погасят твои дети',now(),'UNREAD');
