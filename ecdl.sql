/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     5/12/2018 9:18:27 PM                         */
/*==============================================================*/


drop table if exists GAME;

drop table if exists TEAM;

drop table if exists USER;

/*==============================================================*/
/* Table: GAME                                                  */
/*==============================================================*/
create table GAME
(
   MATCH_ID             bigint not null auto_increment,
   TEAM_ID              bigint,
   TEA_TEAM_ID          bigint,
   MATCH_TIMESTAMP      timestamp,
   MATCH_HOME_GOALS     int,
   MATCH_AWAY_GOALS     int,
   primary key (MATCH_ID)
);

/*==============================================================*/
/* Table: TEAM                                                  */
/*==============================================================*/
create table TEAM
(
   TEAM_ID              bigint not null auto_increment,
   TEAM_NAME            varchar(1024) not null,
   TEAM_GAMES_PLAYED    int,
   TEAM_WON             int,
   TEAM_DRAWN           int,
   TEAM_LOST            int,
   TEAM_GOALS_FOR       int,
   TEAM_GOALS_AGAINST   int,
   TEAM_FORM            int,
   TEAM_TIMESTAMP       timestamp,
   primary key (TEAM_ID)
);

/*==============================================================*/
/* Table: USER                                                  */
/*==============================================================*/
create table USER
(
   USER_ID              bigint not null auto_increment,
   USER_EMAIL           varchar(1024) not null,
   USER_PASSWORD        varchar(1024) not null,
   USER_USERNAME        varchar(1024) not null,
   USER_ISADMIN         int,
   USER_AUTH_TOKEN      varchar(1024),
   primary key (USER_ID)
);

alter table GAME add constraint FK_RELATIONSHIP_1 foreign key (TEAM_ID)
      references TEAM (TEAM_ID) on delete restrict on update restrict;

alter table GAME add constraint FK_RELATIONSHIP_2 foreign key (TEA_TEAM_ID)
      references TEAM (TEAM_ID) on delete restrict on update restrict;

