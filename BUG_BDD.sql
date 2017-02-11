
/*==============================================================*/
/* DBMS name:      ORACLE Version 11g                           */
/* Created on:     24/01/2017 19:17:37                          */
/*==============================================================*/


alter table DETAILS_HISTORIC
   drop constraint FK_DETAILS__FK_DETAIL_REF_STAT;

alter table DETAILS_HISTORIC
   drop constraint FK_DETAILS__FK_DETAIL_USERS1;

alter table DETAILS_HISTORIC
   drop constraint FK_DETAILS__FK_DETAIL_USERS2;

alter table RELATION_HISTORIC
   drop constraint FK_RELATION_FK_RELATI_DETAILS_;

alter table RELATION_HISTORIC
   drop constraint FK_RELATION_FK_RELATI_TICKET;

alter table TICKET
   drop constraint FK_TICKET_FK_ATTACH_ATTACHME;

alter table TICKET
   drop constraint FK_TICKET_FK_REF_ST_REF_STAT;

alter table TICKET
   drop constraint FK_TICKET_FK_TICKET_REF_PRIO;

alter table TICKET
   drop constraint FK_TICKET_FK_TICKET_USERS1;

alter table TICKET
   drop constraint FK_TICKET_FK_TICKET_USERS2;

alter table USERS
   drop constraint FK_USERS_FK_USERS__REF_STAT;

drop table ATTACHMENT_HISTORIC cascade constraints;

drop index IX_DETAILS_HISTORIC3;

drop index IX_DETAILS_HISTORIC2;

drop index IX_DETAILS_HISTORIC1;

drop table DETAILS_HISTORIC cascade constraints;

drop table REF_PRIORITY_TICKET cascade constraints;

drop table REF_STATUT_TICKET cascade constraints;

drop table REF_STATUT_USERS cascade constraints;

drop index IX_RELATION_HISTORIC2;

drop index IX_RELATION_HISTORIC1;

drop table RELATION_HISTORIC cascade constraints;

drop index IX_TICKET5;

drop index IX_TICKET4;

drop index IX_TICKET3;

drop index IX_TICKET2;

drop index IX_TICKET1;

drop table TICKET cascade constraints;

drop index IX_USERS;

drop table USERS cascade constraints;

/*==============================================================*/
/* Table: ATTACHMENT_HISTORIC                                   */
/*==============================================================*/
create table ATTACHMENT_HISTORIC 
(
   ID                   INTEGER              not null,
   ID_HISTORIC          INTEGER              not null,
   URL                  VARCHAR(50)         not null,
   constraint PK_ATTACHMENT_HISTORIC primary key (ID)
);

/*==============================================================*/
/* Table: DETAILS_HISTORIC                                      */
/*==============================================================*/
create table DETAILS_HISTORIC 
(
   ID                   INTEGER              not null,
   ID_UPDATED_BY        INTEGER              not null,
   ID_ASSIGNED_TO       INTEGER              not null,
   ID_STATUT_TICKET     INTEGER              not null,
   DETAILS              VARCHAR(1000)       not null,
   constraint PK_DETAILS_HISTORIC primary key (ID)
);

/*==============================================================*/
/* Index: IX_DETAILS_HISTORIC1                                  */
/*==============================================================*/
create index IX_DETAILS_HISTORIC1 on DETAILS_HISTORIC (
   ID_ASSIGNED_TO ASC
);

/*==============================================================*/
/* Index: IX_DETAILS_HISTORIC2                                  */
/*==============================================================*/
create index IX_DETAILS_HISTORIC2 on DETAILS_HISTORIC (
   ID_UPDATED_BY ASC
);

/*==============================================================*/
/* Index: IX_DETAILS_HISTORIC3                                  */
/*==============================================================*/
create index IX_DETAILS_HISTORIC3 on DETAILS_HISTORIC (
   ID_STATUT_TICKET ASC
);

/*==============================================================*/
/* Table: REF_PRIORITY_TICKET                                   */
/*==============================================================*/
create table REF_PRIORITY_TICKET 
(
   ID                   INTEGER              not null,
   DESCRIPTION          VARCHAR(30)         not null,
   constraint PK_REF_PRIORITY_TICKET primary key (ID)
);

/*==============================================================*/
/* Table: REF_STATUT_TICKET                                     */
/*==============================================================*/
create table REF_STATUT_TICKET 
(
   ID                   INTEGER              not null,
   DESCRIPTION          VARCHAR(30)         not null,
   constraint PK_REF_STATUT_TICKET primary key (ID)
);

/*==============================================================*/
/* Table: REF_STATUT_USERS                                      */
/*==============================================================*/
create table REF_STATUT_USERS 
(
   ID                   INTEGER              not null,
   DESCRIPTION          VARCHAR(20)         not null,
   constraint PK_REF_STATUT_USERS primary key (ID)
);

/*==============================================================*/
/* Table: RELATION_HISTORIC                                     */
/*==============================================================*/
create table RELATION_HISTORIC 
(
   ID                   INTEGER              not null,
   ID_TICKET            INTEGER              not null,
   ID_DETAILS_HISTO     INTEGER              not null,
   constraint PK_RELATION_HISTORIC primary key (ID)
);

/*==============================================================*/
/* Index: IX_RELATION_HISTORIC1                                 */
/*==============================================================*/
create index IX_RELATION_HISTORIC1 on RELATION_HISTORIC (
   ID_DETAILS_HISTO ASC
);

/*==============================================================*/
/* Index: IX_RELATION_HISTORIC2                                 */
/*==============================================================*/
create index IX_RELATION_HISTORIC2 on RELATION_HISTORIC (
   ID_TICKET ASC
);

/*==============================================================*/
/* Table: TICKET                                                */
/*==============================================================*/
create table TICKET 
(
   ID                   INTEGER              not null,
   ID_ATTACHMENT        INTEGER              not null,
   ID_CREATED_BY        INTEGER              not null,
   ID_ASSIGNED_TO       INTEGER              not null,
   ID_PRIORITY_TICKET   INTEGER              not null,
   ID_STATUT_TICKET     INTEGER              not null,
   TITLE                VARCHAR(50)         not null,
   CREATION_DATE        DATE                 not null,
   DETAILS              VARCHAR(1000)       not null,
   AREA                 VARCHAR(50),
   VERSION              VARCHAR(20),
   constraint PK_TICKET primary key (ID)
);

/*==============================================================*/
/* Index: IX_TICKET1                                            */
/*==============================================================*/
create index IX_TICKET1 on TICKET (
   ID_PRIORITY_TICKET ASC
);

/*==============================================================*/
/* Index: IX_TICKET2                                            */
/*==============================================================*/
create index IX_TICKET2 on TICKET (
   ID_ASSIGNED_TO ASC
);

/*==============================================================*/
/* Index: IX_TICKET3                                            */
/*==============================================================*/
create index IX_TICKET3 on TICKET (
   ID_ATTACHMENT ASC
);

/*==============================================================*/
/* Index: IX_TICKET4                                            */
/*==============================================================*/
create index IX_TICKET4 on TICKET (
   ID_CREATED_BY ASC
);

/*==============================================================*/
/* Index: IX_TICKET5                                            */
/*==============================================================*/
create index IX_TICKET5 on TICKET (
   ID_STATUT_TICKET ASC
);

/*==============================================================*/
/* Table: USERS                                                 */
/*==============================================================*/
create table USERS 
(
   ID                   INTEGER              not null,
   ID_STATUT_USERS      INTEGER              not null,
   FRIST_NAME           VARCHAR(20)         not null,
   LAST_NAME            VARCHAR(20)         not null,
   CREATION_DATE        DATE                 not null,
   constraint PK_USERS primary key (ID)
);

/*==============================================================*/
/* Index: IX_USERS                                              */
/*==============================================================*/
create index IX_USERS on USERS (
   ID_STATUT_USERS ASC
);

alter table DETAILS_HISTORIC
   add constraint FK_DETAILS__FK_DETAIL_REF_STAT foreign key (ID_STATUT_TICKET)
      references REF_STATUT_TICKET (ID);

alter table DETAILS_HISTORIC
   add constraint FK_DETAILS__FK_DETAIL_USERS1 foreign key (ID_ASSIGNED_TO)
      references USERS (ID);

alter table DETAILS_HISTORIC
   add constraint FK_DETAILS__FK_DETAIL_USERS2 foreign key (ID_UPDATED_BY)
      references USERS (ID);

alter table RELATION_HISTORIC
   add constraint FK_RELATION_FK_RELATI_DETAILS_ foreign key (ID_DETAILS_HISTO)
      references DETAILS_HISTORIC (ID);

alter table RELATION_HISTORIC
   add constraint FK_RELATION_FK_RELATI_TICKET foreign key (ID_TICKET)
      references TICKET (ID);

alter table TICKET
   add constraint FK_TICKET_FK_ATTACH_ATTACHME foreign key (ID_ATTACHMENT)
      references ATTACHMENT_HISTORIC (ID);

alter table TICKET
   add constraint FK_TICKET_FK_REF_ST_REF_STAT foreign key (ID_STATUT_TICKET)
      references REF_STATUT_TICKET (ID);

alter table TICKET
   add constraint FK_TICKET_FK_TICKET_REF_PRIO foreign key (ID_PRIORITY_TICKET)
      references REF_PRIORITY_TICKET (ID);

alter table TICKET
   add constraint FK_TICKET_FK_TICKET_USERS1 foreign key (ID_ASSIGNED_TO)
      references USERS (ID);

alter table TICKET
   add constraint FK_TICKET_FK_TICKET_USERS2 foreign key (ID_CREATED_BY)
      references USERS (ID);

alter table USERS
   add constraint FK_USERS_FK_USERS__REF_STAT foreign key (ID_STATUT_USERS)
      references REF_STATUT_USERS (ID);

