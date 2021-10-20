-- 一个答卷一份表，一个题目一个记录
DROP TABLE IF EXISTS QuestionnaireDatabase;
CREATE DATABASE QuestionnaireDatabase;
USE QuestionnaireDatabase;

DROP TABLE IF EXISTS QuestionLists;
DROP TABLE IF EXISTS AUTO_TABLE_1;

CREATE TABLE QuestionnaireLists(
    UID BIGINT PRIMARY KEY,
    QuestionnaireName VARCHAR(64) NOT NULL,
    QuestionnaireDescription VARCHAR(512) DEFAULT NULL
)ENGINE = InnoDB DEFAULT CHARSET = utf8;

INSERT QuestionnaireLists SET UID = 1,QuestionnaireName = 'AUTO_TABLE_1',QuestionnaireDescription = 'xxx';

CREATE TABLE AUTO_TABLE_1(
    UID BIGINT PRIMARY KEY,
    QuestionName VARCHAR(1024) NOT NULL,
    QuestionDescription VARCHAR(256) DEFAULT NULL,
    QuestionData VARCHAR(1024) DEFAULT NULL
)ENGINE = InnoDB DEFAULT CHARSET = utf8;

INSERT AUTO_TABLE_1 SET UID = 8888,QuestionName = 'Franklin3';
